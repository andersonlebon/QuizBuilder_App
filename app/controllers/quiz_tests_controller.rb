class QuizTestsController < ApplicationController
  before_action :set_quiz_test, only: %i[ show edit update destroy ]

  # GET /quiz_tests or /quiz_tests.json
  def index
    @quiz_tests = QuizTest.all
  end

  # GET /quiz_tests/1 or /quiz_tests/1.json
  def show
  end

  # GET /quiz_tests/new
  def new
    @quiz_test = QuizTest.new
  end

  # GET /quiz_tests/1/edit
  def edit
  end

  # POST /quiz_tests or /quiz_tests.json
  def create
    @quiz_test = QuizTest.new(quiz_test_params)

    respond_to do |format|
      if @quiz_test.save
        format.html { redirect_to quiz_test_url(@quiz_test), notice: "Quiz test was successfully created." }
        format.json { render :show, status: :created, location: @quiz_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz_tests/1 or /quiz_tests/1.json
  def update
    respond_to do |format|
      if @quiz_test.update(quiz_test_params)
        format.html { redirect_to quiz_test_url(@quiz_test), notice: "Quiz test was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz_tests/1 or /quiz_tests/1.json
  def destroy
    @quiz_test.destroy

    respond_to do |format|
      format.html { redirect_to quiz_tests_url, notice: "Quiz test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_test
      @quiz_test = QuizTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_test_params
      params.require(:quiz_test).permit(:name, :question_description, :author)
    end
end

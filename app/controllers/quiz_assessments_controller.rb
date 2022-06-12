class QuizAssessmentsController < ApplicationController
  
  before_action :set_quiz_assessment, only: %i[ show edit update destroy ]

  # GET /quiz_assessments or /quiz_assessments.json
  def index
    @quiz_assessments = QuizAssessment.all
  end

  # GET /quiz_assessments/1 or /quiz_assessments/1.json
  def show
    @quiz_assessment = QuizAssessment.find(params[:id])
    @questions = @quiz_assessment.questions
  end

  # GET /quiz_assessments/new
  def new
    @quiz_assessment = QuizAssessment.new
  end

  # GET /quiz_assessments/1/edit
  def edit
  end

  # POST /quiz_assessments or /quiz_assessments.json
  def create
    @quiz_assessment = current_user.quiz_assessments.new(quiz_assessment_params)

    respond_to do |format|
      if @quiz_assessment.save
        format.html { redirect_to quiz_assessment_url(@quiz_assessment), notice: "Quiz test was successfully created." }
        format.json { render :show, status: :created, location: @quiz_assessment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz_assessments/1 or /quiz_assessments/1.json
  def update
    respond_to do |format|
      if @quiz_assessment.update(quiz_assessment_params)
        format.html { redirect_to quiz_assessment_url(@quiz_assessment), notice: "Quiz test was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz_assessment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz_assessments/1 or /quiz_assessments/1.json
  def destroy
    @quiz_assessment.destroy

    respond_to do |format|
      format.html { redirect_to quiz_assessments_url, notice: "Quiz test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_assessment
      @quiz_assessment = QuizAssessment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_assessment_params
      params.require(:quiz_assessment).permit(:name, :question_description, :author)
    end
end

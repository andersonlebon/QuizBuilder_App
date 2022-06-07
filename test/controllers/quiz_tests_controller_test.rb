require "test_helper"

class QuizTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_test = quiz_tests(:one)
  end

  test "should get index" do
    get quiz_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_quiz_test_url
    assert_response :success
  end

  test "should create quiz_test" do
    assert_difference("QuizTest.count") do
      post quiz_tests_url, params: { quiz_test: { author: @quiz_test.author, name: @quiz_test.name, question_description: @quiz_test.question_description } }
    end

    assert_redirected_to quiz_test_url(QuizTest.last)
  end

  test "should show quiz_test" do
    get quiz_test_url(@quiz_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_quiz_test_url(@quiz_test)
    assert_response :success
  end

  test "should update quiz_test" do
    patch quiz_test_url(@quiz_test), params: { quiz_test: { author: @quiz_test.author, name: @quiz_test.name, question_description: @quiz_test.question_description } }
    assert_redirected_to quiz_test_url(@quiz_test)
  end

  test "should destroy quiz_test" do
    assert_difference("QuizTest.count", -1) do
      delete quiz_test_url(@quiz_test)
    end

    assert_redirected_to quiz_tests_url
  end
end

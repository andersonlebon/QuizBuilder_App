require "application_system_test_case"

class QuizTestsTest < ApplicationSystemTestCase
  setup do
    @quiz_test = quiz_tests(:one)
  end

  test "visiting the index" do
    visit quiz_tests_url
    assert_selector "h1", text: "Quiz tests"
  end

  test "should create quiz test" do
    visit quiz_tests_url
    click_on "New quiz test"

    fill_in "Author", with: @quiz_test.author
    fill_in "Name", with: @quiz_test.name
    fill_in "Question description", with: @quiz_test.question_description
    click_on "Create Quiz test"

    assert_text "Quiz test was successfully created"
    click_on "Back"
  end

  test "should update Quiz test" do
    visit quiz_test_url(@quiz_test)
    click_on "Edit this quiz test", match: :first

    fill_in "Author", with: @quiz_test.author
    fill_in "Name", with: @quiz_test.name
    fill_in "Question description", with: @quiz_test.question_description
    click_on "Update Quiz test"

    assert_text "Quiz test was successfully updated"
    click_on "Back"
  end

  test "should destroy Quiz test" do
    visit quiz_test_url(@quiz_test)
    click_on "Destroy this quiz test", match: :first

    assert_text "Quiz test was successfully destroyed"
  end
end

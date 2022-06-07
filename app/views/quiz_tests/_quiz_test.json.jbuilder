json.extract! quiz_test, :id, :name, :question_description, :author, :created_at, :updated_at
json.url quiz_test_url(quiz_test, format: :json)

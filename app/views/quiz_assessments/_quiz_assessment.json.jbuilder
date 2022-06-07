json.extract! quiz_assessment, :id, :name, :question_description, :author, :created_at, :updated_at
json.url quiz_assessment_url(quiz_assessment, format: :json)

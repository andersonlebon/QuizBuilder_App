json.extract! question, :id, :name, :question_description, :author, :created_at, :updated_at
json.url question_url(question, format: :json)

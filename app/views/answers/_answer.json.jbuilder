json.extract! answer, :id, :question_answer, :correct, :user_id, :quiz_id, :answer_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)

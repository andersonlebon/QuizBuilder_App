class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_assessment
  belongs_to :answer
end

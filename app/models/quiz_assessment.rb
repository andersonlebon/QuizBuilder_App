class QuizAssessment < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :answers
end

class Question < ApplicationRecord
  belongs_to :user 
  belongs_to :quiz_assessment
  has_many :answers

end

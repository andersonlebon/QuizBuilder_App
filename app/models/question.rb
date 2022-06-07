class Question < ApplicationRecord
  belongs_to :user 
  belongs_to :quiz_test
  has_many :answers

end

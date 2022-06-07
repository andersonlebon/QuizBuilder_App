class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :quiz_test
  belongs_to :answer
end

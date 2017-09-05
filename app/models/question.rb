class Question < ApplicationRecord
  has_many :answers
  belongs_to :category
  belongs_to :user
end

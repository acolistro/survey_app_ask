class Question < ApplicationRecord
  belongs_to :ask
  has_many :responses, dependent: :destroy
end

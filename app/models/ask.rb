class Ask < ApplicationRecord
  has_many :questions, dependent: :destroy

  before_save(:titleize_ask)

  private
    def titleize_ask
      self.topic = self.topic.titleize
    end
end

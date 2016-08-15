class Question < ApplicationRecord
  belongs_to :user
  belongs_to :category

  self.per_page = 5

  before_create :set_nsfw

  private
    def set_nsfw
    	self.nsfw = self.nsfw || self.category.nsfw
    end
end

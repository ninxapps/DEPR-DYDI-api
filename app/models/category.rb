class Category < ApplicationRecord
	has_many :questions, dependent: :destroy
	validates :name, uniqueness: true, presence: true
end

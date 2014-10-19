class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	validates :question, presence: true 
	validates :answer, presence: true, length: { maximum: 700 }
	validates :category, presence: true
end

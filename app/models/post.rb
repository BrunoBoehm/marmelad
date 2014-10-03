class Post < ActiveRecord::Base
	belongs_to :user
	validates :question, presence: true 
	validates :answer, presence: true, length: { maximum: 700 }
end

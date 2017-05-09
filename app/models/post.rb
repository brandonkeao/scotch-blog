class Post < ApplicationRecord
	#This validates presens of title, and makes sure that the length is not more than 140 words
	validates :title, presence: true, length: {maximum: 140}
	#This validates presens of body
	validates :body, presence: true
end

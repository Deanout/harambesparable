class Blog < ApplicationRecord
	belongs_to :user
	validates :title, :presence => true
	validates :body,  :presence => true
	self.per_page = 5
	acts_as_votable
end

class Blog < ApplicationRecord
	belongs_to :user
	validates :title, :presence => true
	validates :brief, :presence => true
	validates :body,  :presence => true
	self.per_page = 10
end

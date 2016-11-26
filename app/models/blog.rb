class Blog < ApplicationRecord
	belongs_to :user
	validates :title, :presence => true
	validates :body,  :presence => true
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


	self.per_page = 5
	acts_as_votable


end

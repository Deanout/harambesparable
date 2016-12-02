class Memory < ApplicationRecord
  # Sets up User Association
  belongs_to :user
  # Makes sure input is expected.
  validates :title, :presence => true
	validates :body,  :presence => true
  # Pagination gem, not a covered use case
  self.per_page = 10
  # Handles the Up/Down voting.
  acts_as_votable
  # Handles the Unread counter in navbar.
  acts_as_readable :on => :created_at
end

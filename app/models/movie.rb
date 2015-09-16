class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :url, presence: true

	belongs_to :event
	has_many :votes
end

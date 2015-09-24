class Vote < ActiveRecord::Base
	validates :name, presence: true
	validates :event_id, presence: true
	validates :movie_id, presence: true

	belongs_to :movie
	belongs_to :event
end

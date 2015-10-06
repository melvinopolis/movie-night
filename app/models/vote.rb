class Vote < ActiveRecord::Base
	validates :name, presence: true
	validates :event, presence: true
	validates :movie, presence: true

	belongs_to :movie
	belongs_to :event
end

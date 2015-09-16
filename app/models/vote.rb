class Vote < ActiveRecord::Base
	validates :name, presence: true

	belongs_to :movie
	belongs_to :event
end

class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :url, presence: true
	validates :title, uniqueness: {
		scope: :event_id,
		message: 'Already suggested for that event',
		case_sensitive: false
	}
	validates :event_id, presence: true

	belongs_to :event
	has_many :votes
end

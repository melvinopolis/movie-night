require 'test_helper'

class MovieTest < ActiveSupport::TestCase

  	should validate_presence_of(:title)
  	should validate_presence_of(:url)

  	should belong_to(:event)
  	should have_many(:votes)

  	should validate_uniqueness_of(:title).
  		scoped_to(:event_id).
  		with_message('Already suggested for that event').
  		case_insensitive

  	should validate_presence_of(:event_id)
	

	# test 'requires a title' do
	#   	@movie = Movie.new
	#   	@movie.title = 'The Big Lebowski'
	#   	assert @movie.valid?

	#   	@movie.title = nil
	#   	refute @movie.valid?

	#   	@movie.title = ''
	#   	refute @movie.valid?
	# end

 #  test 'requires a url' do
	# 	@movie = Movie.new
	# 	@movie.url = 'http://www.thebiglebowski.com'
	# 	assert @movie.valid?

	# 	@movie.url = nil
	# 	refute @movie.valid?

	# 	@movie.url = ''
	# 	refute @movie.valid?
	# end
end


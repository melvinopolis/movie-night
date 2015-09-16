require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  def setup
  	@vote = votes(:one)
  end

  test 'has a valid fixture' do
  	assert @vote.valid?
  end

  should validate_presence_of(:name)

  should belong_to(:movie)
  should belong_to(:event)
end

require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
	test 'index page shows all events' do
		january = events(:january)
		february = events(:february)

		visit events_path

		assert page.has_content?('Events')

		assert page.has_content?(january.location)
		assert page.has_content?(january.occurs_at)

		assert page.has_content?(february.location)
		assert page.has_content?(february.occurs_at)
	end

	test 'can create events' do
		event_time = 10.days.from_now
		visit events_path

		click_link 'Create Event'

		# save_and_open_page

		fill_in 'Location', with: 'Industry'
		fill_in 'Date/Time', with: event_time

		click_button 'Create Event'

		assert page.has_content?('Industry')
		assert page.has_content?(event_time)
	end
end

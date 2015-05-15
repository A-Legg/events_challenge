class EventsController < ApplicationController 
	def index 
		@day_one_events = Event.where('start < ?', Time.zone.parse('2015-09-12')).order(start: :asc)
		@day_two_events = Event.where('start > ?', Time.zone.parse('2015-09-12')).order(start: :asc)
	end
end
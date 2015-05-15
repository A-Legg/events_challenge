class Event < ActiveRecord::Base 
	def self.track_one
		 track_one = Event.where('track LIKE ?', '%Track 1%') 
		 group_events = Event.where.not('track LIKE ?', '%Track%')
		 (track_one << group_events).flatten!.sort_by { |k| k["start"] }
	end
	def self.track_two
		 track_one = Event.where('track LIKE ?', '%Track 2%') 
		 group_events = Event.where.not('track LIKE ?', '%Track%')
		 (track_one << group_events).flatten!.sort_by { |k| k["start"] }
	end
	def self.track_three
		 track_one = Event.where('track LIKE ?', '%Track 3%') 
		 group_events = Event.where.not('track LIKE ?', '%Track%')
		 (track_one << group_events).flatten!.sort_by { |k| k["start"] }
	end
	def self.track_four
		 track_one = Event.where('track LIKE ?', '%Track 4%') 
		 group_events = Event.where.not('track LIKE ?', '%Track%')
		 (track_one << group_events).flatten!.sort_by { |k| k["start"] }
	end
	def self.track_five
		 track_one = Event.where('track LIKE ?', '%Track 5%') 
		 group_events = Event.where.not('track LIKE ?', '%Track%')
		 (track_one << group_events).flatten!.sort_by { |k| k["start"] }
	end
end
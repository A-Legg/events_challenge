require 'CSV'

namespace :import_data do 
	task :create_events => :environment do 
		data = File.read('/Users/adam/dev/events_challenge/test_events (1).csv')
		csv = CSV.parse(data, :headers => true)
		csv.each do |event|
			Event.create!(event.to_hash)
		end
	end
end
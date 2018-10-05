Given(/^the following sports events info exist:$/) do |events_table|
	events_table.hashes.each do |event|
		Spot.create!(event)		
	end
end

Then(/^I should see events info. on the google map$/) do
end

Then(/^I should see the sports list$/) do
end

Then(/^I should see a placeholder$/) do
end

Then(/^I search this placeholder with "([^"]*)"$/) do |arg1|
  
end

Then(/^I should see the "([^"]*)" info on the list$/) do |arg1|
end

Then(/^I should see the "([^"]*)" info on the map$/) do |arg1|
end


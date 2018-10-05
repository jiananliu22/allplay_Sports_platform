Feature: show the location of the sport event on 
 
  As a sport buff
  So that I can easily find the sport events and their info.
  I want to see all the sport events nearby.
  
  #Background: sports events info in database
 
  #Given the following sports events info exist:
  #| title        | address                    | description  |  time_limit  | 
  #| tennis       | student recreation centre  | 2026-05-05   |  14:00-15:00 |
  #| basketball   | Anderson Street            | 2026-01-05   |  14:00-15:00 |    
  #| football     | student recreation centre  | 2017-02-03   |  14:00-16:00 |
  #| volleyball   |student recreation centre   | 2018-01-07   |  14:30-16:30 |
   
Scenario: see the events info. on the google map 
  Given I am on the city page 
  Then I should see events info. on the google map 
 
 
Scenario: search the specific location of a existing sport event 
  When I am on the city page 
  Then I should see the sports list
  And  I should see a placeholder
  Then I search this placeholder with "tennis"
  And  I press "Search"
  Then I should see the "tennis" info on the list 
  And  I should see the "tennis" info on the map
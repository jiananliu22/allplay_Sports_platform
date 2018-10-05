Feature: create a sport event to AllPlay 
 
  As a sport buff
  So that I can easily connect with other sport fans.
  I want to invite people to play sports with me.
  

Scenario: try to create an account 
  Given I am on the city page 
  Then I should see "Sign up" 
  And I follow "Sign up"
 Then I should be on the registration page
 When I fill in "Username" with "Tomcruise"
 And  I fill in "Email" with "Tomcruise@66.com"
 And  I fill in "Password" with "tomcruise"
 And  I fill in "Password confirmation" with "tomcruise"
 When I press "Sign up"
 Then I should be on the city page
 
 
#Scenario: try to sign in with an account
#  Given I am on the city page 
#  Then I should see "Sign in" 
#  And I follow "Sign in"
# Then I should be on the sign_in page
# When I fill in "Username" with "Tomcruise"
# And  I fill in "Email" with "Tomcruise@66.com"
# And  I fill in "Password" with "tomcruise"
# When I press "Log in"
# Then I go to the city page
 And  I should see "My Sports" 
 And  I follow "My Sports"
 When I am on the event_create page
 And  I should see "Create"
 Then I follow "Create"
 Then I should be on the new_spot page
 And  I fill in "Title" with "basketball "  
 And  I fill in "Description" with "hello_basketball"
 And  I fill in "Address" with "student recreation centre"
 Then I press "Create"
 Then I am on the event_create page
 And  I should see the "basketball event" info on the list
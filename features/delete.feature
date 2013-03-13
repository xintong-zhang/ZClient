Feature: Delete
        Scenario: successful delete
		Given there is a question "why"
		And a user visits the messages page
		Then there is destroy button
	        When the user clicks Destroy button	
		
		Then he should see the same page
		And the deleted item should not show up

	Scenario: no item to delete
		Given there is no question
		And a user visits the messages page
		Then he should not see the destroy button


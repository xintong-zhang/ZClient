Feature: Delete 	
	Scenario: no item to read
		Given there is no question
		And a user visits the messages page
		Then he should not see the read button

	Scenario: successful read
		Given there is a question
		And a user visits the messages page
		Then there is read button
	        When the user clicks read button	
		
		Then the readed item should not show up



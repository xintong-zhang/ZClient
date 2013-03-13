Feature: Index
	A user should see his message on the index page

	Scenario: Successful message
		Given a user send a question "Hi. How are you?"
	        When he visits the messages page
		Then he should see his message

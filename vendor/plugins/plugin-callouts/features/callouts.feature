Feature: Managing callouts
	In order to create callouts
	As a cms user
	I want to be able to add, remove and reorder the callouts
	
	Background:
    Given the following callout records
    | title             | subtitle                   | url            | callout        |
    | Find out more     | Learn more about Paul       | /find-out-more | find_out.jpg   |
    | Newsletter signup | Sign up for the newsletter | /newsletter    | newsletter.jpg |
  
	
	Scenario: Navigate to callouts management
		Given that I am logged in as a CMS user
		And I am on the admin dashboard
		When I click "Callouts"
		Then I should be on the list of callouts
	
	Scenario: Callouts List
		Given that I am logged in as a CMS user
		And I am on the list of callouts
	  Then I should see "Find out more"
		And I should see "Newsletter signup"
		
	Scenario: New valid Callout
		Given that I am logged in as a CMS user
		And I am on the list of callouts
		When I click "New Callout"
		Then I should be on the new callouts form
		And I fill in "Title" with "Follow me on Twitter"
		And I fill in "Subtitle" with ""
		And I fill in "URL" with "http://twitter.com/paulcarlile"
		And I attach the file at "features/support/assets/test.jpg" to "Callout"
		And I press "Create Callout"
		Then I should be on the list of callouts
		And I should see "Successfully created!"
		
	Scenario: Edit an existing valid callout
		Given that I am logged in as a CMS user
		And I am on the list of callouts
		And I click "Edit"
		Then I should be on the edit callout form
		And the "Title" field should contain "Find out more"
		And the "Subtitle" field should contain "Learn more about Paul"
		And the "URL" field should contain "/find-out-more"
		
		
	
	
	
	

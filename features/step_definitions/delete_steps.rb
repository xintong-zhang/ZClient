              Given(/^there is no question$/) do
                Message.delete_all
              end
              And (/^a user visits the messages page$/) do 
                  visit root_path
                end
              Then(/^he should not see the read button$/) do
              # page.should have_no_selector('input', value:"Read")
             end        
              Given(/^there is a question$/) do
                  Message.delete_all  
                  FactoryGirl.create(:cartoon)
                  FactoryGirl.create(:message)
                end
                               Then /^there is read button$/ do
                  page {have_selector('input', value:"Read")}
                end
	        When(/^the user clicks read button$/) do
                  click_button "Read"
                end
               Then(/^the readed item should not show up$/) do
                page.should_not(have_content("Hi from FactoryGirl"))               
               end
             

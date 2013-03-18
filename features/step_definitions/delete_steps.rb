	      Given(/^there is a question "(.*?)"$/) do |arg1|
                Message.delete_all  
                Message.create(:phone_number => "111111111111", :content => arg1)
               end 
                And /^a user visits the messages page$/ do
                  FactoryGirl.create(:cartoon)
                  visit root_path
                end
                Then /^there is destroy button$/ do
                  page {have_selector('input', value:"Destroy")}
                end
	        When(/^the user clicks Destroy button$/) do
                  click_button "Destroy"
                end
               Then(/^the deleted item should not show up$/) do
                page.should_not(have_content("why"))               
               end
              Given(/^there is no question$/) do
                Message.delete_all
              end
             Then(/^he should not see the destroy button$/) do
               page.should have_no_selector('input', value:"Destroy")
             end 

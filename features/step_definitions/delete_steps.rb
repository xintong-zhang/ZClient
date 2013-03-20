                Given(/^there is a question "(.*?)"$/) do |arg1|
                  Message.delete_all  
                  m = Message.create(:phone_number => "111111111111", :content => arg1)
                  FactoryGirl.create(:cartoon)
                  m.cartoon = Cartoon.first
                  debugger
                  m.save 
                end 
                  visit root_path
                end
                Then /^there is read button$/ do
                  page {have_selector('input', value:"Read")}
                end
	        When(/^the user clicks read button$/) do
                  click_button "Read"
                end
               Then(/^the readed item should not show up$/) do
                page.should_not(have_content("why"))               
               end
              Given(/^there is no question$/) do
                Message.delete_all
              end
              Then(/^he should not see the read button$/) do
               page.should have_no_selector('input', value:"Read")
             end 

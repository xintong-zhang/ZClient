Given(/^a user send a question "(.*?)"$/) do |arg1|
  Message.create(:phone_number=>"111111111111", :content=>arg1)  
end
When /^he visits the messages page$/ do
  FactoryGirl.create(:cartoon)
  visit root_path
end
Then(/^he should see "(.*?)"$/) do |arg1|
  page.should(have_content(arg1))
end

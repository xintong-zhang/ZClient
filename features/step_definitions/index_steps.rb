Given(/^a user send a question "(.*?)"$/) do |arg1|

  FactoryGirl.create(:cartoon)
  FactoryGirl.create(:message)
end
When /^he visits the messages page$/ do
  visit root_path
end
Then(/^he should see "(.*?)"$/) do |arg1|
  page.should(have_content("Hi from FactoryGirl"))
end

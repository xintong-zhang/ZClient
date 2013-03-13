Given(/^a user send a question "(.*?)"$/) do |arg1|
  Message.create(:phone_number=>"111111111111", :content=>arg1)  
end
When /^he visits the messages page$/ do
  visit root_path
end
Then(/^he should see his message$/) do
  page.should(have_content("Hi. How are you?"))
end

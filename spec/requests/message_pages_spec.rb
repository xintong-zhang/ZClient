require 'spec_helper'
require 'factory_girl'


describe "Message pages" do 
  subject { page }
  before{
    Message.delete_all
    FactoryGirl.create(:cartoon)
    FactoryGirl.create(:message)
    visit root_path
  }

  describe "visit right page" do
    it { should have_selector('title', text: "ZClient")}
  end
  describe "can post message" do
    it {should have_content("Hi from FactoryGirl")}
  end
  describe "can delete message" do
    before{  click_button "Read"}
    it{should_not have_content("Hi from FactoryGirl")}    
  end
end

require 'spec_helper'

describe "Message pages" do 
  subject { page }
  before{ visit root_path}

  describe "visit right page" do
    it { should have_selector('title', text: "ZClient")}
  end
  describe "can post message" do
    Message.delete_all 
    Message.create(:phone_number=>"111111111111", :content=>"Hi from RSPEC")
    it {should have_content("Hi from RSPEC")}
  end
  describe "can delete message" do
    Message.delete_all
    Message.create(:phone_number=>"111111111111", :content=>"Hi from RSPEC")
    before{  click_button "Destroy"}
    it{should_not have_content("Hi from RSPEC")}    
  end
end

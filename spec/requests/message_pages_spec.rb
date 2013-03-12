require 'spec_helper'

describe "Message pages" do
  subject { page }
  describe "index" do
    visit messages_path
  end
  it { should have_selector('h1', text: "All messages")}
end

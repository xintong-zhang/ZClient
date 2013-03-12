require 'spec_helper'

describe "Message pages" do
  subject { page }
  before{ visit root_path}
  it { should have_selector('h1', text: "All messages")}
end

require 'factory_girl'

FactoryGirl.define do
  factory :cartoon do
    name "Belle"
    url "Belle.png"
  end
  factory :message do
    phone_number "111111111111"
    content "Hi from FactoryGirl" 
    cartoon_id 1
  end
end

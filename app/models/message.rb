class Message < ActiveRecord::Base
  attr_accessible :content, :phone_number, :flag
  belongs_to :cartoon
end

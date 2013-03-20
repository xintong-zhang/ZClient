class Sender < ActionMailer::Base
  default from: "zmessagezest@gmail.com"

    def message_list(email)
      @messages = Message.all
      mail :to => email, :subject => "Welcome to ZMessage"
    end
end

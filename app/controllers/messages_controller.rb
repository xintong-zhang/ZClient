class MessagesController < ApplicationController
  def index
      @messages = Message.where("flag = ? and created_at > ?", true, Time.at(params[:after].to_i+1))
      @cartoons = Cartoon.all
      respond_to do |format|
        format.html
        format.js
      end
  
  end
  
  def destroy
    @message = Message.find(params[:id])
    @message.flag = false
    @message.save
    respond_to do |format|
      format.html{redirect_to root_url}
    end
  end
  
  def newmail
    @email = params[:email]
    if @email.match(/@zestfinance.com/)
      Sender.message_list(@email).deliver
    else
      flash[:notice] = " Please enter a valid zest email"
    end
    redirect_to root_url
  end
  
end

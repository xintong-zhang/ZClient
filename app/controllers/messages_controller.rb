class MessagesController < ApplicationController
  def index
    @messages = Message.where(:flag => true)
  end
  def destroy
    @message = Message.find(params[:id])
    @message.flag = false
    @message.save
    respond_to do |format|
      format.html{redirect_to root_url}
    end
  end
end

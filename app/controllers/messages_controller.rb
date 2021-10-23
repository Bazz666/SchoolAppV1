class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def create 
    message = current_user.messages.build(message_params)
    if message.save 
      ActionCable.server.broadcast "chat"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end

end

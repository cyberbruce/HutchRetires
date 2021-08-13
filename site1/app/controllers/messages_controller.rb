class MessagesController < ApplicationController
  
  def index
   
  end

  def new
  end

  def create
    count = params[:count].to_i || 1 
      
    Hutch.connect
    count.times do |index|      
      Hutch.publish('bruce.messages', {stuff: "Message number #{index + 1}"} )     
    end
    redirect_to messages_path, notice: 'Send messages!'     
  end

  
end

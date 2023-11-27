class MessagesController < ApplicationController
  def show
    @messages = Message.all
    # take the random message from the database
    @message = @messages.sample
  end
end

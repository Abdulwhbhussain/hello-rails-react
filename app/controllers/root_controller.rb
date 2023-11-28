class RootController < ApplicationController
  def index
    @greetings = Message.pluck(:greeting)
    
    @greeting = @greetings.sample
  end
end

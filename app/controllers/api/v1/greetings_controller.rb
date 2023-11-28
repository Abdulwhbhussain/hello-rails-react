class Api::V1::GreetingsController < ApplicationController
  def index
  end;

  def random_greeting
    all_greetings = Message.pluck(:greeting)
    random_greeting = all_greetings.sample

    render json: { greeting: random_greeting }
  end
end

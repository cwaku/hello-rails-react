class V1::ThingsController < ApplicationController
  def index
    @greetings = Greeting.all
    render json: @greetings
  end
end

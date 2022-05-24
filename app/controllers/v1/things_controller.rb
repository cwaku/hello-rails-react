module V1
  class ThingsController < ApplicationController
    def index
      @greetings = Greeting.all
      render json: @greetings
    end

    def create
      @greeting = Greeting.new(greeting_params)
      if @greeting.save
        render json: @greeting
      else
        render json: @greeting.errors, status: :unprocessable_entity
      end
    end

    private

    def greeting_params
      params.require(:greeting).permit(:greeting)
    end
  end
end

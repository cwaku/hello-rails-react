class V1::ThingsController < ApplicationController
  def index
    render json: { :things => [
      {
        :name => ' your_custom_name',
        :description => ' your_custom_description'
      }
    ] }.to_json
  end
end

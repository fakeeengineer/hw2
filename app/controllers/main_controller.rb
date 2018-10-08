require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if @w 
      city = City.new(
        name: params[:city],
        description: params[:description],
        temperature: params[:temperature]
      )      
      city.save
      end
  end
end

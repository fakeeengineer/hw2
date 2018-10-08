


class CitiesController < ApplicationController
    def index
        @w = WeatherService.get(params[:city])
        if @w 
        city = City.new(
            name: params[:city],
            landmark: params[:landmark],
            population: params[:population]
        )      
        # if @w not in City.all 
        #     city.save
        #     redirect_to :back
        end
    end

    def view
        @city = params[:city]
        @z = City.all[@city.to_sym]
        if @w not in City.all #Problem 3 same city if not in hash
            city.save
            redirect_to :back
        end
      end
    end

    def new
    end

    def create
    end

    def update(update_params)
    end

    def save
    	$cities[@name.to_sym] = self
	end
    
    def self.all
        $cities
	end 

    def  update(update_params)
        @city = params[:city]
        @population = params[:population]
        @landmark = params[:landmark]
        @change = City.all[@city.to_sym]
        if @population != nil
            @change.update(population: @population)
        if @landmark != nil
            @change.update(landmark: @landmark)
	
    end
    def delete
    @city = params[:city]
    City.all.delete_if{|i| i[@city_to_sym] != nil
    end
end

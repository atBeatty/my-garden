class PlantsController < ApplicationController
    def index
        @plants = Plant.all
    end

    def new
        @plant = Plant.new

    end

    def show
        @plant = Plant.find_by_id(params[:id])

    end
    
    def create
        @plant = Plant.create(plant_params)
        redirect_to "/"
    end

    def edit
        @plant = Plant.find_by_id(params[:id])

    end

    def update
        redirect_to "/"
    end

    def destroy
        redirect_to "/"
    end


    private

    def plant_params 
        params.require(:plant).permit(:name, :species, :user_id, :garden_id)

    end
    
end

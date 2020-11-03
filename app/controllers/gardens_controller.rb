class GardensController < ApplicationController
    def index
        @gardens = Garden.all
    end

    def new
        @garden = Garden.new

    end

    def show
        @garden = Garden.find_by_id(params[:id])

    end
    
    def create
        @garden = Garden.create(garden_params)
        redirect_to "/"
    end

    def edit
        @garden = Garden.find_by_id(params[:id])

    end

    def update
        redirect_to "/"
    end

    def destroy
        redirect_to "/"
    end

    private

    def garden_params 
        params.require(:garden).permit(:name, :location, :indoor)
        
    end

    
end

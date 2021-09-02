class BoatsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    wrap_parameters format: []

    def index
        boats = Boat.all
        render json: boats 
    end

    def create
        boat = @current_user.boats.create(boat_params)
        render json: boat
    end
    def show
        boat = find_boat
        render json: boat
    end

    def update 
        boat = find_boat
        boat.update(boat_params)
        render json: boat
    end
    def destroy
        boat = find_boat
        boat.destroy
        head :no_content
    end



    private

    def find_boat
        Boat.find(params[:id])
    end



    def boat_params
        params.permit(:title, :description, :price, :make, :model, :year, :length, :passengers, :crew, :bed, :sleep, :sailboat, :tender, :alcohol, :food, :extras, :location, :fuel, :lat, :long)
    end
end

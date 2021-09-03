class BookingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    wrap_parameters format: []

    def index 
        bookings = @current_user.bookings.all
        render json: bookings
    end

    def create
        booking = @current_user.bookings.create(booking_params)
        render json: booking
    end


    private

    def booking_params
        params.permit(:date, :guests, :boat_id)
    end
end

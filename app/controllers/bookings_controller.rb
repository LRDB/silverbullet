class BookingsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]

    def show
        @user = User.find(params[:id])
        @bookings = @user.bookings.all
    end

    def index
        @bookings = Booking.all
    end

    def create
        @booking = current_user.bookings.build(booking_params)
        if @booking.save
            flash[:success] = "Booking created."
            redirect_to current_user
        else
            flash[:danger] = "Booking failed."
            redirect_to timeslots_path
        end
    end

    def destroy
    end

    private
    def booking_params
        params.require(:booking).permit(:email,:table,:datetime,:guests)
    end
end

class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to @reservation
    end
  end

  def index

  end

  def show
      puts "#{User.name} your space is reserved"
  end

  private

  def reservation_params
    params.require(:reservation).permit(:id, :reservation)
  end
end

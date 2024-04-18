class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update destroy confirmation]
  def index
    @reservations = Reservation.all
  end

  def show; end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to @reservation
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @reservation.update(reservation_params)
      redirect_to :reservations
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    reservation.delete
    redirect_to reservations_path
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:full_name, :response, :number_of_guests, :phone, :address_one, :city, :state,
                                        :zipcode, :non_meat, :non_gluten, :passcode, allergen_ids: [])
  end
end

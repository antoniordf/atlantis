class BookingsController < ApplicationController
  before_action :find_yacht, only: [:new, :create]

  def index
    if params[:query].present?
      @query = params[:query]
      @bookings = Booking.where("name LIKE ?", "%#{params[:query]}%")
    else
      @bookings = Booking.all
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.yacht = @yacht
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def find_yacht
    @yacht = Yacht.find(params[:yacht_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date_time, :end_date_time)
  end
end

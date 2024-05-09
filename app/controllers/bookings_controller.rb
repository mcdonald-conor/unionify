class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  # GET /bookings
  def index
    @bookings = Booking.all
  end
  # GET /bookings/1
  def show
  end
  # GET /bookings/new
  def new
    @item = Item.find(params[:item_id])
    @booking = Booking.new
  end
  # GET /bookings/1/edit
  def edit
  end
  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.item = Item.find(params[:item_id])
    if @booking.save
      redirect_to @booking, notice: ‘Booking was successfully created.’
    else
      render :new
    end
  end
  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: ‘Booking was successfully updated.’
    else
      render :edit
    end
  end
  # DELETE /bookings/1
  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      redirect_to bookings_url, notice: ‘Booking was successfully destroyed.’
    else
      redirect_to bookings_url, alert: ‘An error occurred while deleting the booking.’
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end
    # Only allow a trusted parameter “white list” through.
    def booking_params
      params.require(:booking).permit(:start_date, :end_date)
    end

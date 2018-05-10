class BookingsController < ApplicationController
  before_action :set_booking, only: [:charge, :show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @traveller = params[:traveller_id]
    @tour_guide = params[:tour_guide_id]
    @tour= params[:tour_id]
  end

  # GET /bookings/1/edit
  def edit
    
  end

  # POST / sneakers/1/charge
  def charge
    amount = @booking.tour.price

    if current_user.stripe_id.blank?
        customer = Stripe::Customer.create(
          email: params[:stripeEmail],
          source: params[:stripeToken]
        )
        current_user.stripe_id = customer.id #cus_123fdsfsg
        current_user.save! # still haven't handled this error
    end

      charge = Stripe::Charge.create(
        customer: current_user.stripe_id,
        amount: @booking.tour.price.to_i,
        description: @booking.tour.location,
        currency:'AUD'
      ) 

      flash[:notice] = 'Payment made!'
      redirect_back fallback_location: mytours_path
    
      rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charge_booking_path
  end


  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:tour_guide_id, :traveller_id,:tour_id, :has_paid, :rating, :review)
    end  
end

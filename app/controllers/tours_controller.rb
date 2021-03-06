class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy]
  before_action :set_booked, only: [:mytours]

  # GET /tours
  # GET /tours.json
  def index
    @tours = Tour.all
    authorize @tours
  end

  def mytours
    @mytours = current_user.tours.all.where(has_booked: false).order(start_date_time: 'ASC')
    @mybookedtours = current_user.bookings_as_tour_guide.all.order(created_at: 'ASC')
  end

  # GET /tours/1
  # GET /tours/1.json
  def show
    @tours = current_user.tours
  end

  # GET /tours/new
  def new
    @tour = Tour.new
    @tour.user = current_user
    @locations = Location.all
    authorize @tour
  end

  # GET /tours/1/edit
  def edit
    @tour.user = current_user
    @locations = Location.all
  end

  # POST /tours
  # POST /tours.json
  def create
    @tour = Tour.new(tour_params)
    @tour.user = current_user
    @locations = Location.all
    authorize @tour

    respond_to do |format|
      if @tour.save
        format.html { redirect_to @tour, notice: 'Tour was successfully created.' }
        format.json { render :show, status: :created, location: @tour }
      else
        format.html { render :new }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tours/1
  # PATCH/PUT /tours/1.json
  def update
    respond_to do |format|
      if @tour.update(tour_params)
        format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour }
      else
        format.html { render :edit }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tours/1
  # DELETE /tours/1.json
  def destroy
    @tour.destroy
    respond_to do |format|
      format.html { redirect_to tours_url, notice: 'Tour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour
      @tour = Tour.find(params[:id])
      authorize @tour
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_params
      params.require(:tour).permit(:start_date_time, :end_date_time, :description, :price, :location_id)
    end

    def set_booked
      @bookings = Booking.all
      @tours = Tour.all
      @bookings.each do |booking|
        @tours.each do |tour|
          if booking.tour_id == tour.id
            Tour.where(id: tour.id).update(has_booked: true)
          end
        end
      end
    end

end

class YachtsController < ApplicationController
  before_action :find_yacht, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @yachts = Yacht.where("name LIKE ?", "%#{params[:query]}%")
    else
      @yachts = Yacht.all
    end
  end

  def show
    @booking = Booking.new
    # We want our map in the show page not index page like in lecture notes
    # In our case we only show marker for 1 yacht, so no need to loop through array.
    # However, JS map_controller expects an array to be passed in, so we make @marker an array
    @marker = [{
      lat: @yacht.latitude,
      lng: @yacht.longitude,
      info_window: render_to_string(partial: "info_window", locals: { yacht: @yacht })
    }]
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    if @yacht.save
      redirect_to yachts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    # This is the array of photos that I want to upload
    # array = params[:yacht][:photos]
    # Here we update all of the other info for a yacht - excluding photos
    if @yacht.update(yacht_params)
      # The first element of the array is an empty string - something to do with active storage
      # We delete the empty string
      # array.delete_at(0)
      # What remains are the other photos. We loop through them and attach them to existing photos
      # Following the convention that active storage expects
      # :photos <<
      # array.each { |photo| @yacht.photos.attach(io: photo.tempfile, filename: "test", content_type: "image/png") }
      @yacht.save
      redirect_to yacht_path(@yacht)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @yacht.destroy
    redirect_to yachts_path, status: :see_other
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name,
                                  :length,
                                  :capacity,
                                  :description,
                                  :crew,
                                  :price_per_day,
                                  :location,
                                  :cabin,
                                  :speed,
                                  photos: [])
  end

  def find_yacht
    @yacht = Yacht.find(params[:id])
  end
end

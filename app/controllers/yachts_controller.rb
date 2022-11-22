class YachtsController < ApplicationController
  before_action :find_yacht, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @yachts = Yachat.where("name LIKE ?", "%#{params[:query]}%")
    else
      @yachts = Yacht.all
    end
  end

  # def show
  #   find_yacht
  # end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    if @yacht.save
      redirect_to yachts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   find_yacht
  # end

  def update
    # find_yacht
    if @yacht.update(yacht_params)
      redirect_to yacht_path(@yacht)
    else
      render :new, status: :unprocessable_entity #added this
    end
  end

  def destroy
    # find_yacht
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
                                  :speed)
  end

  def find_yacht
    @yacht = Yacht.find(params[:id])
  end
end

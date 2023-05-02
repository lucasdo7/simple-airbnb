class FlatsController < ApplicationController

  def index
    if params[:query].present?
      @query = params[:query]
      @flats = Flat.where('name LIKE ?', "%#{@query}%")
    else
      @flats = Flat.all
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      redirect_to flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :stars, :pet_friendly, :picture_url)
  end
end

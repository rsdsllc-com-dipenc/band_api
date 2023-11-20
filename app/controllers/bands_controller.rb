class BandsController < ApplicationController
  before_action :set_band, only: %i[show update destroy]

  # @route GET /bands (bands)
  def index
    @bands = Band.all

    render json: @bands, only: %i[id name]
  end

  # @route GET /bands/:id (band)
  def show
    render json: @band
  end

  # @route POST /bands (bands)
  def create
    @band = Band.new(band_params)

    if @band.save
      render json: @band, status: :created, location: @band
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # @route PATCH /bands/:id (band)
  # @route PUT /bands/:id (band)
  def update
    if @band.update(band_params)
      render json: @band
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  # @route DELETE /bands/:id (band)
  def destroy
    @band.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_band
    @band = Band.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def band_params
    params.require(:band).permit(:name)
  end
end

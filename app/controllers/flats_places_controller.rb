class FlatsPlacesController < ApplicationController
  before_action :set_flats_place, only: [:show, :update, :destroy]

  # GET /flats_places
  def index
    @flats_places = FlatsPlace.all
  end

  # GET /flats_places/1
  def show; end

  # POST /flats_places
  def create
    @flats_place = FlatsPlace.new(flats_place_params)

    if @flats_place.save
      render json: @flats_place, status: :created, location: @flats_place
    else
      render json: @flats_place.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flats_places/1
  def update
    if @flats_place.update(flats_place_params)
      render json: @flats_place
    else
      render json: @flats_place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flats_places/1
  def destroy
    @flats_place.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flats_place
      @flats_place = FlatsPlace.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flats_place_params
      params.fetch(:flats_place, {})
    end
end

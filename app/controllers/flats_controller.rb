class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update, :destroy]

  # GET /flats
  def index
    @flats = Flat.all
  end

  # GET /flats/1
  def show; end

  def new; end

  def edit; end

  # POST /flats
  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user

    if @flat.save
      %i(places services pictures).each do |relations|
        @flat.add_relation named: relations, with: params[relations]
      end

      render :show
    else
      render json: @flat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flats/1
  def update
    if @flat.update(flat_params)
      render :show
    else
      render json: @flat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flats/1
  def destroy
    @flat.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_flat
    @flat = Flat.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def flat_params
    params.require(:flat).permit(
      :title,
      :description,
      :map_description,
      :address,
      :latitude,
      :longitude,
      services: [],
      places: [],
      pictures: []
    )
  end
end

class FlatsServicesController < ApplicationController
  before_action :set_flats_service, only: [:show, :update, :destroy]

  # GET /flats_services
  def index
    @flats_services = FlatsService.all
  end

  # GET /flats_services/1
  def show; end

  # POST /flats_services
  def create
    @flats_service = FlatsService.new(flats_service_params)

    if @flats_service.save
      render json: @flats_service, status: :created, location: @flats_service
    else
      render json: @flats_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flats_services/1
  def update
    if @flats_service.update(flats_service_params)
      render json: @flats_service
    else
      render json: @flats_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flats_services/1
  def destroy
    @flats_service.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_flats_service
    @flats_service = FlatsService.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def flats_service_params
    params.fetch(:flats_service, {})
  end
end

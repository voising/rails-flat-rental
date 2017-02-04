class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :update, :destroy]
  before_action :empty_html_ifn_json

  # GET /flats
  def index
    @flats = Flat.all
  end

  # GET /flats/1
  def show; end

  def new; end

  # POST /flats
  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      render json: @flat, status: :created, location: @flat
    else
      render json: @flat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flats/1
  def update
    if @flat.update(flat_params)
      render json: @flat
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
      params.fetch(:flat, {})
    end
end

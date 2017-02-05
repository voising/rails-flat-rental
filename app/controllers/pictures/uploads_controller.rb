class Pictures::UploadsController < ApplicationController

  def create
    picture_ids = params[:pictures].reduce([]) do |ids, file|
      ids << Picture.create(file: file).id
    end

    render json: {
      picture_ids: picture_ids
    }
  end
end
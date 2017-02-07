class Pictures::UploadsController < ApplicationController
  def create
    pictures = params[:pictures].reduce([]) do |arr, file|
      arr << Picture.create(file: file)
    end
    render json: {
      pictures: pictures
    }
  end
end

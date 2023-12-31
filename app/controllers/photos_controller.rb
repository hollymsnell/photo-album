class PhotosController < ApplicationController
  def index
    photos = Photo.all
    render json: photos.as_json
  end

  def create
    photo = Photo.new(
      name: params[:name],
      width: params[:width],
      location: params[:location],
      height: params[:height],
      image: params[:image]
    )
    photo.save
    render json: photo.as_json
  end

  def show
    photo = Photo.find_by(id: params[:id])
    render json: photo.as_json
  end

  def update
    photo = Photo.find_by(id: params[:id])
    photo.name = params[:name] || photo.name
    photo.width = params[:width] || photo.width
    photo.height = params[:height] || photo.height
    photo.image = params[:image] || photo.image
    photo.save
    render json: photo.as_json
  end

  def destroy
    photo = Photo.find_by(id: params[:id])
    photo.destroy
    render json: {message: "Photo successfully destroyed."}
  end
end

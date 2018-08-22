class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
  end

  def create
    @album = Album.new(params.require(:album).permit(:title, :artist_name, :year_released))
    @album.save
    redirect_to @album
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
  end
end

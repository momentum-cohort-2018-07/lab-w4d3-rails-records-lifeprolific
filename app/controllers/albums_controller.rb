class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params.require(:album).permit(:title, :artist_name, :year_released))
    if @album.save
      redirect_to @album
    else
      render 'new'
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(params.require(:album).permit(:title, :artist_name, :year_released))
      redirect_to @album
    else
      render 'edit'
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end
end

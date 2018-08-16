class SongsController < ApplicationController
  def index
    @songs = Genre.all
  end

  def show
    @song = Genre.find(params[:id])
  end

  def new
    @song = Genre.new
  end

  def create
    @song = Genre.create(song_params)
    redirect_to song_url(@song)
  end

  def edit
    @song = Genre.find(params[:id])
  end

  def update
    @song = Genre.find(params[:id])
    @song.update(song_params)
    @song.save

    redirect_to song_url(@song)
  end



  private

  def song_params
    params.require(:song).permit(:name, :bio)
  end
end

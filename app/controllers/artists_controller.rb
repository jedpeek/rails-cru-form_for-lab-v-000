class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.create(artist_params)
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_url(@artist)
  end


  private

  def artist_params
    params.require(:artist).include(:name, :bio)
  end
end

class GenresController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_url(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    @genre.save

    redirect_to genre_url(@genre)
  end



  private

  def genre_params
    params.require(:genre).permit(:name, :bio)
  end
end

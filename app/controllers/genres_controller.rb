class GenresController < ApplicationController
  def index
    @genres = Artist.all
  end

  def show
    @genre = Artist.find(params[:id])
  end

  def new
    @genre = Artist.new
  end

  def create
    @genre = Artist.create(genre_params)
    redirect_to genre_url(@genre)
  end

  def edit
    @genre = Artist.find(params[:id])
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

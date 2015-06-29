class GenresController < ApplicationController
  def index
    @genres = Genre.all.order(:name).order(:name).page(params[:page]).per(14)
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = @genre.movies.order(:title).page(params[:page]).per(12)
  end

end

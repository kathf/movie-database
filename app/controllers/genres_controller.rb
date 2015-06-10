class GenresController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @genres = @movie.genres
    render layout: false
  end
end

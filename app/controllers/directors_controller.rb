class DirectorsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @director = @movie.director
    render json: @director
  end
end

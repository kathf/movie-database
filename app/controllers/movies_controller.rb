class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :destroy, :edit, :update]

  def index
    @movies = Movie.order(:title).page(params[:page]).per(12)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie), notice: 'Movie Created'
    else
      render :new
    end
  end

  def update
    if @movie.update_attributes(movie_params)
      redirect_to movies_path(@movie), notice: 'Movie Updated'
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :length, :poster)
  end
end

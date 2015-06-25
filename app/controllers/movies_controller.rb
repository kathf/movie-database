class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :destroy, :edit, :update, :show_genre, :show_director, :show_cast_member]

  def index
    @movies = Movie.order(:title).page(params[:page]).per(12)
  end

  def show
    @genres = @movie.genres
  end

  def new
    @movie = Movie.new
  end

  def show_genre
    @genres = @movie.genres
    render partial: 'genres/genre', collection: @genres, layout: false
  end

  def show_director
    @directors = @movie.directors
    render partial: 'directors/director', collection: @directors, layout: false
  end

  def show_cast_member
    @cast_members = @movie.cast_members
    render partial: 'cast_members/cast_member', collection: @cast_members, layout: false
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

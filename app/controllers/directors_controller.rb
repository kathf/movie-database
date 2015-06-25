class DirectorsController < ApplicationController
  def index
    @directors = Director.all.order(:name)
  end

  def show
    @director = Director.find(params[:id])
    @movies = @director.movies.order(:title).page(params[:page]).per(12)
  end
end

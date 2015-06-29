class SearchController < ApplicationController

  def search
    @pg_search_document = PgSearch.multisearch(params[:search][:query])
    @movie_results = @pg_search_document.where(searchable_type: "Movie").order(:content).page(params[:page]).per(10)
    @genre_results = @pg_search_document.where(searchable_type: "Genre").order(:content).page(params[:page]).per(10)
    @director_results = @pg_search_document.where(searchable_type: "Director").order(:content).page(params[:page]).per(10)
    @cast_results = @pg_search_document.where(searchable_type: "CastMember").order(:content).page(params[:page]).per(10)
    render file: '/search/search'
  end

  # def search1
    # @pg_search_document = PgSearch.multisearch(params[:search][:query])
    # @results = @pg_search_document.order(:content).page(params[:page]).per(10)
    # render file: '/search/search'
  # end
  # end
  #
  # def search2
  #   @movie_results = PgSearch.multisearch(params[:query]).where(searchable_type: "Movie")
  #   @genre_results = PgSearch.multisearch(params[:query]).where(searchable_type: "Genre")
  #   @director_results = PgSearch.multisearch(params[:query]).where(searchable_type: "Director")
  #   @cast_results = PgSearch.multisearch(params[:query]).where(searchable_type: "CastMember")
  # end
end

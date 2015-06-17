module MoviesHelper

  # # no longer required because using kaminari gem
  # def next_page_link
  #   link_to "Next Page", movies_url(page: @page + 1) unless (@page >= (Movie.count / 12))
  # end
  #
  # def previous_page_link
  #   link_to "Previous Page", movies_url(page: @page - 1) unless (@page == 1)
  # end
end

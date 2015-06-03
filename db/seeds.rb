movies_array = ['The Dark Knight','Queen of the Mountains','Inception','Star Wars: Episode V - The Empire Strikes Back','The Matrix','Mad Max: Fury Road','The Wolf of Wall Street','The Great Gatsby','Django Unchained','Blood Diamond','The Departed', "I'm Not There",'Candy','Casanova','Brokeback Mountain','Blue Jasmine','Babel','The Talented Mr. Ripley'
]

movies_array.each do |movie_title|

  i = Imdb::Search.new(movie_title).movies[0]

  movie1 = Movie.create!(title: i.title, year: i.year, length: i.length, poster: i.poster)


  movie1.build_director(name: i.director[0])

  i.genres.each do |gen|
    movie1.genres.create!(genre: gen)
  end

  i.cast_members.each do |member|
    movie1.cast_members.create!(name: member)
  end

  # movie1.save

end

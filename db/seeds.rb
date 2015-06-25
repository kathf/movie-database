movies_array = ['The Dark Knight','Queen of the Mountains','Inception','Star Wars: Episode V - The Empire Strikes Back','The Matrix','Mad Max: Fury Road','The Wolf of Wall Street','The Great Gatsby','Django Unchained','Blood Diamond','The Departed', "I'm Not There",'Candy','Casanova','Brokeback Mountain','Blue Jasmine','Babel','The Talented Mr. Ripley'
]

movies_array.each do |movie_title|

  i = Imdb::Search.new(movie_title).movies[0]

  movie1 = Movie.create!(title: i.title, year: i.year, length: i.length, poster: i.poster)

  i.genres.each do |gen|
    gen1 = Genre.find_or_create_by(name: gen)
    movie1.genres << gen1
  end

  i.cast_members.each do |cast|
    cast1 = CastMember.find_or_create_by(name: cast)
    movie1.cast_members << cast1
  end

  i.director.each do |dir|
    dir1 = Director.find_or_create_by(name: dir)
    movie1.directors << dir1
  end

  movie1.save!

end

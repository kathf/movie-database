class CreateGenresMovies < ActiveRecord::Migration
  def change
    create_table :genres_movies do |t|
      t.references :genre, :movie
    end
  end
end

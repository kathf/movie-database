class CreateDirectorsMovies < ActiveRecord::Migration
  def change
    create_table :directors_movies do |t|
      t.references :director, :movie
    end
  end
end

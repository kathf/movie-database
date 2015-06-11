class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.references :movie
      t.string :name
      t.timestamps null: false
    end
  end
end

class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.references :movie
      t.string :name, array: true, default: []
      t.timestamps null: false
    end
  end
end

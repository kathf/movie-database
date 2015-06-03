class CreateCastings < ActiveRecord::Migration
  def change
    create_table :castings do |t|
      t.references :movie
      t.references :cast_member
      t.timestamps null: false
    end
  end
end

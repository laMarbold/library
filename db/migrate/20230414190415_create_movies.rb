class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :release_year
      t.string :description
      t.string :duration
      t.integer :status
      t.string :price

      t.timestamps
    end
  end
end

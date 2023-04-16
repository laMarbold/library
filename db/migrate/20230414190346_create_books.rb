class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :release_year
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end

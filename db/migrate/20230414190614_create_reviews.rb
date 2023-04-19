class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :reviewed_for_type
      t.integer :reviewed_for_id
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end

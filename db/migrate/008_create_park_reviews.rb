
class CreateParkReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :park_reviews do |t|
      t.string :title
      t.string :content
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :skate_park, null: false, foreign_key: true

      t.timestamps
    end
  end
end

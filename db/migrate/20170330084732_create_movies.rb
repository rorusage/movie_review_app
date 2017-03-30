class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.text :description
      t.string :director
      t.date :release_date
      t.decimal :average_rating
      t.string :rating
      t.integer :reviewer

      t.timestamps null: false
    end
  end
end

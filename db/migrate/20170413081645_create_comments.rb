class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :comment
      t.integer :movie_id
      t.integer :raty

      t.timestamps null: false
    end
  end
end

class AddIndexToMovie < ActiveRecord::Migration
  def change
    add_index :movies, :title
  end
end

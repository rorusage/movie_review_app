class AddCommentsCountToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :comments_count, :integer, default: 0
  end
end

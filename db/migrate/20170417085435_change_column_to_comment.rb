class ChangeColumnToComment < ActiveRecord::Migration
  def change
    change_column :comments, :raty, :decimal
  end
end

class DeleteUserColumnFrom < ActiveRecord::Migration
  def change
  remove_column :aperos, :user
  add_column :aperos, :user_id,:integer
  remove_column :aperos, :category
  add_column :aperos, :category_id,:integer
  end

 
end

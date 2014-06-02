class ReplaceIdUserByIdUser < ActiveRecord::Migration
  remove_column :posts, :id_user
  add_column :posts, :user_id, :integer
end

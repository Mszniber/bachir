class AddIdUserToPosts < ActiveRecord::Migration
  add_column :posts, :id_user, :integer 
end

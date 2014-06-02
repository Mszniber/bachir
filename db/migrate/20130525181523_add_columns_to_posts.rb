class AddColumnsToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :time , :integer 
  	add_column :posts, :description , :text
  	add_column :posts, :difficulty , :integer
  	remove_column :posts, :title 
  	remove_column :posts, :content

  end
end

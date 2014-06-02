class CreateComponentsPostsJoinTable < ActiveRecord::Migration
   create_table :components_posts, :id => false do |t|
      t.integer :post_id
      t.integer :component_id
    end
end

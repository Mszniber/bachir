class CreatePostComponent < ActiveRecord::Migration
    create_table :posts_components, :id => false do |t|
      t.integer :post_id
      t.integer :component_id
    end
end


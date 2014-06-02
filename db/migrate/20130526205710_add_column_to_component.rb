class AddColumnToComponent < ActiveRecord::Migration
  add_column :components, :post_id, :integer 
end

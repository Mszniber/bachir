class Test < ActiveRecord::Migration
	add_column :users, :admin, :boolean, :default => false
end
rails 
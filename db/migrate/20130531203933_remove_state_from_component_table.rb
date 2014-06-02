class RemoveStateFromComponentTable < ActiveRecord::Migration
    remove_column :components, :state
end

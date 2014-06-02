class ChangeStateTypeForComponentTable < ActiveRecord::Migration
   change_table :components do |t|
   t.change :state, :string
   end
end

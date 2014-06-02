class CreateStateTable < ActiveRecord::Migration
      create_table :state do |t|
      t.string :name
    end
end

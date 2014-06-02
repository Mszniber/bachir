class CreateAperos < ActiveRecord::Migration
  def change
    create_table :aperos do |t|
      t.string :name
      t.text :content
      t.date :date
      t.time :hour
      t.string :user
      t.string :visibility
      t.string :category

      t.timestamps
    end
  end
end

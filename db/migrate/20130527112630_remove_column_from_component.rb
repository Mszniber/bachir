class RemoveColumnFromComponent < ActiveRecord::Migration
  def up
    remove_column :components, :post_id
  end

  def down
    add_column :components, :post_id, :string
  end
end

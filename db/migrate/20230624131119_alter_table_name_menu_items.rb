class AlterTableNameMenuItems < ActiveRecord::Migration[7.0]
  def change
    rename_table :menu_items, :menus
    rename_column :orders, :menu_item_id, :menu_id
  end
end

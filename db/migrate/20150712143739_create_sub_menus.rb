class CreateSubMenus < ActiveRecord::Migration
  def change
    create_table :sub_menus do |t|
      t.string :name
      t.string :description
      t.integer :menu_id
      t.timestamps null: false
    end
  end
end

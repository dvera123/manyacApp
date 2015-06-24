class CreateSubMenus < ActiveRecord::Migration
  def change
    create_table :sub_menus do |t|
      t.string :name
      t.integer :menu_id
	  t.text :description
      t.timestamps null: false
    end
  end
end

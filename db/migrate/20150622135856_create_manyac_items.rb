class CreateManyacItems < ActiveRecord::Migration
  def change
    create_table :manyac_items do |t|
      t.string :name
	  t.text :description
	  t.integer :maniac_id
	  t.datetime :published_at
      t.timestamps null: false
    end
  end
end

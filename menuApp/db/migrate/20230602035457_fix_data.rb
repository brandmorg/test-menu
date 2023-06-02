class FixData < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.timestamps
    end

    create_table :menu_items do |t|
      t.string :name
      t.string :description
      t.float :price
      t.belongs_to :menus, index: true, foreign_key: true
      t.timestamps
    end
  end
end

class CreateMenuAndMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu do |t|
      t.string :name
      t.timestamps
    end

    create_table :menu_items do |t|
      t.string :name
      t.float :price
      t.belongs_to :menu, index: true, foreign_key: true
      t.timestamps
    end
  end
end

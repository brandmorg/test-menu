class CreateRestaurant < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.timestamps
    end

    add_reference :menus, :restaurants, index: true
  end
end

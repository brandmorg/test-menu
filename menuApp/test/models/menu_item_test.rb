require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
    test '1 - Menu Item Has Name' do
        menuItem = MenuItem.create(
            name: 'testBurger',
            price: 0
        )
        assert_equal(menuItem.name, 'testBurger')
    end

    test '2 - MenuItems Price > 0' do
        menuItem = MenuItem.create(
            name: 'testTaco',
            price: 4.50,
        )
        assert(menuItem.price > 0)
    end

    test '3 - MenuItems Price <= 0 Return Error' do
        assert_raises(ActiveRecord::RecordInvalid) do
            MenuItem.create!(
            name: 'testTaco',
            price: -4.50,
        )
    end
    end


end

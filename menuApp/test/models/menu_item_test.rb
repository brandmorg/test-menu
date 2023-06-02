require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
    test '1 - MenuItems Price > 0' do
        menu = Menu.create(name: 'testMenu')
        menuItem = MenuItem.create(
            name: 'testTaco',
            price: 4.50,
            menus_id: menu.id
        )

        assert.equal(menuItem.menu.id, menu.id)
    end
end

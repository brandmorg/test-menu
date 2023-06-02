require 'test_helper'

class MenuTest < ActiveSupport::TestCase
    # Verify Name
    # Verify Has Many MenuItems
    test '1 - Menu Has Name' do
        menu1 = Menu.create(name: 'testMenu')
        assert_equal(menu1.name, 'testMenu')
    end
end

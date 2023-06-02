require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
    test '1 - Restaurant Has Name' do
        place1 = Restaurant.create(name: 'testRestaurant')
        assert_equal(place1.name, 'testRestaurant')
    end
end

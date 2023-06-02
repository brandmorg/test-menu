class MenuItem < ApplicationRecord
    belongs_to :menus
    validates :name, presence: true # no null items
    validates :price, numericality: { greater_than_or_equal_to: 0 }
end

class Accessory < ApplicationRecord
    has_many :arena
    validates :weapon, numericality: { greater_than_or_equal_to: 0}
    validates :shield, numericality: { greater_than_or_equal_to: 0}
end

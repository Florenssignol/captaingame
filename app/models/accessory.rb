class Accessory < ApplicationRecord
    has_many :arenas, ->(accessory) do
        unscope(where: :character_1_weapon)
        .where('character_1_weapon_id = :id OR character_1_weapon_id = :id', id: accessory.id)
    end, dependent: :destroy
    validates :weapon, numericality: { greater_than_or_equal_to: 0}
    validates :shield, numericality: { greater_than_or_equal_to: 0}
end

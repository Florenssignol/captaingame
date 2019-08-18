class Arena < ApplicationRecord
    belongs_to :character_1, class_name: 'Character'
    belongs_to :character_2, class_name: 'Character'
    belongs_to :character_1_weapon, class_name: 'Accessory'
    belongs_to :character_2_weapon, class_name: 'Accessory'
end

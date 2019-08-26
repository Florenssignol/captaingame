class Character < ApplicationRecord
    has_one_attached :avatar
    has_many :arenas, ->(character) do
        unscope(where: :character_id)
        .where('character_1_id = :id OR character_2_id = :id', id: character.id)
    end, dependent: :destroy
    has_many :accessories, ->(accessory) do
        unscope(where: :accessory_id)
        .where('character_1_weapon_id = :id OR character_2_weapon_id = :id', id: accessory.id)
    end, dependent: :destroy

    def update_stats
        total_matches = self.defeat + self.victory
        if total_matches == 0
            return self.update(victory_percentage: 0)
        end 
        percentage = self.victory / total_matches.to_f
        self.update(victory_percentage: percentage)
    end
end

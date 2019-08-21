class Character < ApplicationRecord
    has_one_attached :avatar
    has_many :arena
    has_many :accessory

    def update_stats
        total_matches = self.defeat + self.victory
        if total_matches == 0
            return self.update(victory_percentage: 0)
        end 
        percentage = self.victory / total_matches.to_f
        self.update(victory_percentage: percentage)
    end
end

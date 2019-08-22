class StartFight
    attr_reader :arena

    def initialize(arena)
        @arena = arena
    end

    def call
        character_2_life = arena.character_2.life
        character_1_life = arena.character_1.life 
        character_2_weapon = arena.character_2_weapon
        character_1_weapon = arena.character_1_weapon
        character_1_attack = arena.character_1.attack + arena.character_1_weapon.weapon
        character_2_attack = arena.character_2.attack + arena.character_2_weapon.weapon
  
        arena.historic = ""
        while character_1_life > 0 || character_2_life > 0
          if character_1_life <= 0
            break
          end
          character_2_life -= character_1_attack
          arena.historic += "#{arena.character_2.name} has only #{character_2_life} points left <br>" 
          if character_2_life <= 0  
            break
          end
          character_1_life -= character_2_attack
          arena.historic += "#{arena.character_1.name} has only #{character_1_life} points left <br>" 
        end
        if character_1_life < character_2_life 
          @winner = arena.character_2
          @loser = arena.character_1
          if arena.fight_ended == false
            arena.character_1.update(
              defeat: arena.character_1.defeat + 1,
              experience: arena.character_1.experience + 1
            )
            arena.character_2.update(
              victory: arena.character_2.victory + 1,
              experience: arena.character_2.victory + 1
            )
          end 
        else 
          @winner = arena.character_1 
          @loser = arena.character_2
          if arena.fight_ended == false
            arena.character_1.update(
              victory: arena.character_1.victory + 1,
              experience: arena.character_1.experience + 1
            )
            arena.character_2.update(
              defeat: arena.character_2.defeat + 1, 
              experience: arena.character_2.experience + 1
            )
        end
      end
      arena.save!
      arena.character_1.update_stats
      arena.character_2.update_stats
      arena.update(
        fight_ended: true
      )
      return @winner, @loser
    end
end
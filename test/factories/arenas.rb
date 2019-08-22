FactoryBot.define do 
    factory :arena do
        association :character_1, factory: [:character, :zeus]
        association :character_2, factory: [:character, :athena]
        association :character_1_weapon, factory: [:accessory, :bow]
        association :character_2_weapon, factory: [:accessory, :shield]

        trait :character_1_stronger_than_character_2 do 
            association :character_1, factory: [:character, :athena]
            association :character_2, factory: [:character, :zeus]
        end
    end
end
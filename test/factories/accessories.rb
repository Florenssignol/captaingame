FactoryBot.define do
    factory :accessory do
        trait :bow do
            name { 'Bow' }
            weapon { 1 }
            shield { 0 }
        end

        trait :shield do
            name { 'Shield' }
            weapon { 0 }
            shield { 1 }
        end
    end
end
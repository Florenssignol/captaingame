FactoryBot.define do
    factory :character do
        trait :zeus do
            name { 'Zeus' }
            attack { 10 }
            life { 10 }
        end

        trait :athena do
            name { 'Athena' }
            attack { 15 }
            life { 15 }
        end
    end
end
class Character < ApplicationRecord
    has_one_attached :avatar
    has_many :arena
end

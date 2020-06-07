class Specie < ApplicationRecord
    has_many :dinos
    has_many :users, through: :dinos
end

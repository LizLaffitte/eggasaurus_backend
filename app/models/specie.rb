class Specie < ApplicationRecord
    has_many :dinos
    has_many :users, through: :dinos
    validates :name, presence: true
end

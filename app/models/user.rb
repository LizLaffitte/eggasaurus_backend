class User < ApplicationRecord
    has_many :dinos
    has_many :species, through: :dinos
end

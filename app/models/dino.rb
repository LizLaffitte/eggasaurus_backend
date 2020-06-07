class Dino < ApplicationRecord
  belongs_to :specie
  belongs_to :user
end

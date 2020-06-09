class Dino < ApplicationRecord
  belongs_to :specie
  belongs_to :user
  validates :name, uniqueness: {scope: :user_id,  message: "is already one of your dino's names."}
end

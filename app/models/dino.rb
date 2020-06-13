class Dino < ApplicationRecord
  belongs_to :specie
  belongs_to :user
  validates :name, presence: true, uniqueness: {scope: :user_id,  message: "is already one of your dino's names."}
  validates :specie, presence: true
  validates :user, presence: true
end

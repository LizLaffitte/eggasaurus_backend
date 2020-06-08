class DinoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :happiness, :hunger, :tiredness, :user_id, :specie_id, :specie
end

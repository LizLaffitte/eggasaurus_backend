class DinoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :happiness, :hunger, :tiredness, :specie_id, :specie
end

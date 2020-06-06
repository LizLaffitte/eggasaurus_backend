class SpecieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :sprite_url, :dinos
end

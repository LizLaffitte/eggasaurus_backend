class Api::V1::SpeciesController < ApplicationController
    def index
        species = Specie.all 
        render json: SpecieSerializer.new(species)
    end
end

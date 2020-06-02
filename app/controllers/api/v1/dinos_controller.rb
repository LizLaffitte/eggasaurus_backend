class Api::V1::DinosController < ApplicationController
    def index
        dinos = Dino.all
        render json: dinos
    end

    # def create
    #     dino = Dino.new(dino_params)
    #     if dino.save
    #         render json: dinos
    #     end
    # end

    private
    
    def dino_params
        params.require(:dino).permit(:name, :happiness, :hunger, :tiredness, :category_id)
    end
end


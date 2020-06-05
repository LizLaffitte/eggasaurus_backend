class Api::V1::DinosController < ApplicationController
    before_action :find_dino, only: [:show, :update, :destroy]

    def index
        dinos = Dino.all
        render json: DinoSerializer.new(dinos)
    end

    def show
        dino = Dino.find_by_id(params[:id])
        render json: DinoSerializer.new(dino)
    end

    def update
        @dino.update(dino_params)
        if @dino.save
          render json: @dino, status: :accepted
        else
          render json: { errors: @dino.errors.full_messages }, status: :unprocessible_entity
        end
    end
    # def create
    #     dino = Dino.new(dino_params)
    #     if dino.save
    #         render json: dinos
    #     end
    # end

    private
    
    def dino_params
        params.require(:dino).permit(:happiness, :hunger, :tiredness)
    end

    def find_dino
        @dino = Dino.find_by_id(params[:id])
    end
end


class EstablishmentsController < ApplicationController

    def index
        establishments = Establishment.all
        render json: establishments
    end

    def create
        establishment = Establishment.new(establishment_params)
        byebug
        if establishment.save
            byebug
            render json: establishment
        else
            render json: {error: 'unable to save establishment'}
        end
    end

    private
    def establishment_params
        params.require(:establishment).permit(:name, :address, :phone_number, :lat, :lng, :price_level, :rating, :img_url, :website_url, :reference_id, :us_state_id)
    end

end

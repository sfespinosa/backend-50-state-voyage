class EstablishmentsController < ApplicationController

    def create
        establishment = Establishment.new(establishment_params)
        if establishment.save
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

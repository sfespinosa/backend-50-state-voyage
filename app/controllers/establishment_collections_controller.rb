class EstablishmentCollectionsController < ApplicationController

    def index
        establishment_collections = EstablishmentCollection.all.reverse
        render json: establishment_collections
    end

    def create
        establishment_collection = EstablishmentCollection.new(establishment_collection_params)
        if establishment_collection.save
            render json: establishment_collection
        else
            render json: {error: 'unable to save to your collection'}
        end
    end

    def update
        establishment_collection = EstablishmentCollection.find(params[:id])
        if establishment_collection_params
            establishment_collection.update(establishment_collection_params)
            render json: establishment_collection
        else
            render json: {error: 'unable to save to your collection'}
        end
    end

    def destroy
        establishment_collection = EstablishmentCollection.find(params[:id])
        establishment_collection.destroy
    end

    private
    def establishment_collection_params
        params.require(:establishment_collection).permit(:user_id, :establishment_id, :user_comments, :visited)
    end
end

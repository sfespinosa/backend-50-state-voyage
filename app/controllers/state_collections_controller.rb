class StateCollectionsController < ApplicationController

    def index
        state_collections = StateCollection.all
        render json: state_collections
    end

    def create
        state_collection = StateCollection.new(state_collection_params)
        if state_collection.save
            render json: state_collection
        else 
            render json: { error: 'unable to save!' }
        end
    end

    def destroy
        state_collection = StateCollection.find(params[:id])
        state_collection.destroy
    end

    private
    def state_collection_params
        params.require(:state_collection).permit(:user_id, :us_state_id)
    end
end

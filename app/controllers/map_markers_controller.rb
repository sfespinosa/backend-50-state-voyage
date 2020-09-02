class MapMarkersController < ApplicationController
    
    def index
        map_markers = MapMarker.all
        render json: map_markers
    end

    def create
        map_marker = MapMarker.new(map_marker_params)
        if map_marker.save
            render json: map_marker
        else
            render json: { error: 'unable to save map marker'}
        end
    end

    private
    def map_marker_params
        params.require(:map_marker).permit(:user_id, :establishment_id, :category)
    end
end

class UserRelationshipsController < ApplicationController

    def create
        user_relationship = UserRelationship.new(user_relationship_params)
        if user_relationship.save
            render json: user_relationship
        else 
            render json: { error: 'unable to save relationship' }
        end
    end

    private
    def user_relationship_params
        params.require(:user_relationship).permit(:followed_user_id, :follower_id)
    end
end

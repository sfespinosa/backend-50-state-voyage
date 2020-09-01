class UsersController < ApplicationController
    before_action :authorized, only: [:persist, :update]

    def show
        user = User.find(params[:id])
        if user
            render json: {user: UserSerializer.new(user)}
        else
            render json: {error: 'user cannot be found'}
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: token}
        else 
            render json: { error: 'unable to create user' }
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: token}
        else 
            render json: {error: 'Incorrect User or Password'}
        end
    end

    def persist
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token}
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid?
            render json: {user: UserSerializer.new(user)}
        else
            render json: {error: 'User cannot be updated'}
        end
    end

    def destroy
        user = User.find(params[:id])
        if user
            user.delete
        else
            render json: {error: 'Unable to delete user'}
        end
    end

    private
    def user_params
        params.permit(:username, :password, :name, :birthdate, :location, :email_address)
    end
end

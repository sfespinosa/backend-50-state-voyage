class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

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

    private
    def user_params
        params.permit(:username, :password, :name, :age, :location, :email_address)
    end
end

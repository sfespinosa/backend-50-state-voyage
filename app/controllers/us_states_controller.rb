class UsStatesController < ApplicationController
    def index
        states = UsState.all
        render json: states
    end
end

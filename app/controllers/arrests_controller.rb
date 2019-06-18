class ArrestsController < ApplicationController
    def index
        @arrest = Arrest.all
        render json: @arrest
      end
end

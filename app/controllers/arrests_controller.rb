class ArrestsController < ApplicationController
    def index
        @arrest = Arrest.all
        render json: @arrest
      end

      def show
        @arrest = find_arrest
        render json: @arrest
      end

  private

  def arrest_params
    params.permit(:date, :name, :category, :description)
  end

  def find_arrest
    @arrest = Arrest.find(params[:id])
  end
  
end

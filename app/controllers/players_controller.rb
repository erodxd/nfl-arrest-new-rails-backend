class PlayersController < ApplicationController
    def index
        @players = Player.all
        render json: @players
      end

      def show
        @player = find_player
        render json: @player
      end

      private

      def player_params
        params.permit(:image, :name, :team, :team_city, :position)
      end

      def find_player
        @player = Player.find(params[:id])
      end
end

class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
    if @monster.tweets.empty?
      # Redirige a la vista de crear tweets si el monstruo no tiene tweets
      redirect_to new_tweet_path(monster_id: @monster.id)
    end
  end
end

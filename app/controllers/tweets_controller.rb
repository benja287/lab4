class TweetsController < ApplicationController
  def index
   @tweets = Tweet.order(created_at: :desc)
 end

  def new
    @tweet = Tweet.new
    @monster = Monster.find(params[:monster_id])
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @monster = Monster.find(params[:monster_id])
    @tweet.monster = @monster

    if @tweet.save
      redirect_to monster_path(@monster)  # Redirige de vuelta al monstruo después de crear el tweet
    else
      render 'new'
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end

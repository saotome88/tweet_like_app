class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :create]
  def index
    @tweets = Tweet.all.order("created_at DESC")
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    if @tweet.valid?
      @tweet.save
      redirect_to root_path
    else
      render 'root_path'
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text)
  end
end

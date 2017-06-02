class TweetsController < ApplicationController

  # Find params before the following actions
  before_action :set_tweet, only: [:edit, :update, :destroy]

  # User needs to login before doing the following actions
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]


  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params2)
    @tweet.user = current_user
    if @tweet.save
      redirect_to show_path
    else
      redirect_to show_path
    end
  end

  def edit
  end

  def update
    @tweet.update(tweet_params)
    redirect_to show_path
  end

  def destroy
    @tweet.destroy
    redirect_to show_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body, :user_id)
  end

  def tweet_params2
    params.permit(:body, :user_id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

end

class TweetsController < ApplicationController
  # User needs to login before doing the following actions
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]

  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @user = current_user
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to show_path
    else
      render :new
    end   
  end
  
  private
    
  def tweet_params
    params.require(:tweet).permit(:body)
  end
  

end
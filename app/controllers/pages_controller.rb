class PagesController < ApplicationController

  def home
  end
  
  def show
    @tweets = Tweet.all
  end

  

end
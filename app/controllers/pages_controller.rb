class PagesController < ApplicationController

  def home
  end
  
  def show
    @tweets = Tweet.all.order('updated_at DESC')
  end

  

end
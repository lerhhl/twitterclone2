class UsersController < ApplicationController
# User needs to login before doing the following actions
  before_action :authenticate_user!, only: [:show]

  def show
  end

end

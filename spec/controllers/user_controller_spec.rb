require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it { should route(:get, '/users/1').to('users#show', id: 1) }
end
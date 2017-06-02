require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  it { should route(:get, '/').to(action: :home) }

	describe 'GET #show' do

		# Set up
		let(:user) { create(:user) }
		let!(:tweet_listings) { create_list(:tweet, 3, user: user) }

		# Preparation
		before { get :show }

		# Assertion
		it { expect(assigns(:tweets)).to eq(tweet_listings) }

		# Teardown
		#taken care of by RSpec because the created data will be removed by Rails
	end

end


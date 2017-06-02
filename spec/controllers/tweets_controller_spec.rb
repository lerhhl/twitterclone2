require 'rails_helper'

RSpec.describe TweetsController, type: :controller do

  describe 'GET #new' do

  let(:user) {create(:user)}

  before do
    sign_in user
    get :new
  end

  it { expect(assigns(:tweet)).to be_a_new_record }

  end

  describe 'GET #create' do
    let(:user) {create(:user)}

    before do
      sign_in user
      post :create, params: {tweet: params}
    end

    context 'when user#save passes' do
      let(:params) { attributes_for(:tweet) }
      it { expect(response).to redirect_to show_path}
    end

    context 'when user#save fails' do
      let(:params) { attributes_for(:tweet, :invalid) }
      it { expect(response).to redirect_to show_path}
    end

  end



end

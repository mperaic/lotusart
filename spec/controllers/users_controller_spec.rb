require 'rails_helper'
 describe UsersController, type: :controller do
  let(:user) { User.create!(email: "biba0@gmail.com", password: "number0")}
  let(:user1) { User.create!(email: "biba11@gmail.com", password: "number11")}
   describe 'GET #show' do
    context 'when a user is logged in' do
       before do
        sign_in user
      end
       it 'loads correct user details' do
        get :show, params: {id: user.id}
        expect(response).to be_ok
        expect(assigns(:user)).to eq user
      end
       it 'tries to access show page of the second user' do
        get :show, params: {id: user1.id}
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
     end
     context 'when a user is not logged in' do
      it 'redirects home' do
        get :show, params: {id: user.id}
        expect(response).to redirect_to(root_path)
      end
    end
  end
 end

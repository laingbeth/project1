require 'rails_helper'

describe ReviewersController, type: :controller do
  let(:reviewer1) { Reviewer.create(name: 'Andy', relation: 'interested in exploring various cultures
      through their menus') }
  let(:reviewer2) { Reviewer.create(name: 'Sara',relation: 'interested in different cuisines and game
      to try anything once!') }

  describe 'GET #index' do
    it 'renders index' do # loads the page
      get :index
      expect(response).to render_template(:index)
    end

    it 'populate an array of reviewers' do
      get :index
      expect(assigns(:reviewer)).to eq([reviewer1, reviewer2])
    end
  end

  describe 'GET #show' do
    it 'renders show' do
      get :show, id: reviewer1.id
      expect(response).to render_template(:show)
    end

    it 'assigns correct reviewer' do
      get :show, id: reviewer1.id
      expect(assigns(:reviewer)).to eq(reviewer1)
    end
  end

  describe 'GET #new' do
    it 'renders new' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'assigns a new Reviewer' do
      get :new
      expect(assigns(:reviewer)).to be_a_new(Reviewer)
    end
  end

  describe 'POST #create' do
    context 'valid attributes' do
      let(:valid_attributes) { { name: 'Sara', relation: 'interested in different cuisines and game
      to try anything once!' } }

      it 'create new reviewer' do
        expect{
          post :create, reviewer: valid_attributes
        }.to change(Reviewer, :count).by(1)
      end

      it 'redirect to reviewers#index' do
        post :create, reviewer: valid_attributes
        expect(response).to redirect_to(reviewers_path)
      end
    end

    context 'invalid attributes' do
      let(:invalid_attributes) { { name: '' } }

      it 'does not create new reviewer' do
        expect{
          post :create, reviewer: invalid_attributes
        }.to_not change(Reviewer, :count)
      end

      it 're-renders new' do
        post :create, reviewer: invalid_attributes
        expect(response).to render_template(:new)
      end
    end
  end
end
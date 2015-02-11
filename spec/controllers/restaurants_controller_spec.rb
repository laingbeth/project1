require 'rails_helper'

describe RestaurantsController, type: :controller do
     
  let(:restaurant1) { Restaurant.create(recommender: 'Sara',
                     category: 'Indian', name: 'Cafe Bombay', price: '$$',
                     comments: 'The Chicken Tikka Masala was amazing and I could eat it several times a week and never 
                     get sick of it',
                     best_dish: 'Chicken Tikka Masala',
                     location: 'Briarcliff Road Atlanta GA 30345',
                     website:  'www.cafebombayatlanta.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven 
                     (Tandoor) and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'bombay.jpg') }
  let(:restaurant2) { Restaurant.create(recommender: 'Andy',
                     category: 'Peruvian', name: 'Machu Picchu', price: '$$',
                     comments: 'Working my way through the menu; all good!',
                     best_dish: 'Arroz Con Mariscos',
                     location: '3375-1130 Buford Hwy. Atlanta GA 30329',
                     website:  'machupicchugeorgia.com',
                     description: 'A unique blend of traditions and ingredients combine to create one of the most 
                     delicious cuisines.',
                     image_name: 'machu_picchu.jpg') }

  describe 'GET #index' do
    it 'renders index' do 
      get :index
      expect(response).to render_template(:index)
    end

    it 'populate an array of restaurants' do
      get :index
      expect(assigns(:restaurants)).to eq([restaurant1, restaurant2])
    end
  end

  describe 'GET #show' do
    it 'renders show' do
      get :show, id: restaurant1.id
      expect(response).to render_template(:show)
    end

    it 'assigns correct restaurant' do
      get :show, id: restaurant1.id
      expect(assigns(:restaurant)).to eq(restaurant1)
    end
  end

  describe 'GET #new' do
    it 'renders new' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'assigns a new Restaurant' do
      get :new
      expect(assigns(:restaurant)).to be_a_new(Restaurant)
    end
  end


  describe 'GET #edit' do
    let(:restaurant_for_edit) { Restaurant.create(recommender: 'Sara', category: 'Indian',
                     name: 'Cafe Bombay', price: '$$',
                     comments: 'The Chicken Tikka Masala was amazing and I could eat it several times a week and never 
                     get sick of it', best_dish: 'Chicken Tikka Masala', location: 'Briarcliff Road Atlanta GA 30345',
                     website:  'www.cafebombayatlanta.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven 
                     and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'bombay.jpg') }
    it 'renders edit' do
      get :edit, id: restaurant_for_edit.id 
      expect(response).to render_template(:edit) 
    end


    it 'assigns correct restaurant' do
      get :edit, id: restaurant_for_edit.id
      expect(assigns(:restaurant)).to eq(restaurant_for_edit) 
    end
  end

  describe 'POST #create' do
    context 'valid attributes' do
      let(:valid_attributes) { { recommender: 'Sara', category: 'Indian',
                     name: 'Cafe Bombay', price: '$$',
                     comments: 'The Chicken Tikka Masala was amazing and I could eat it several times a week and never 
                     get sick of it', best_dish: 'Chicken Tikka Masala', location: 'Briarcliff Road Atlanta GA 30345',
                     website:  'www.cafebombayatlanta.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven 
                     and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'bombay.jpg' } }

      it 'create new restaurant' do
        expect{
          post :create, restaurant: valid_attributes
        }.to change(Restaurant, :count).by(1)
      end

      it 'redirect to restaurants#index' do
        post :create, restaurant: valid_attributes
        expect(response).to redirect_to(restaurants_path)
      end
    end

    context 'invalid attributes' do
      let(:invalid_attributes) { { name: '' } }

      it 'does not create new restaurant' do
        expect{
          post :create, restaurant: invalid_attributes
        }.to_not change(Restaurant, :count)
      end

      it 're-renders new' do
        post :create, restaurant: invalid_attributes
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'PATCH #update' do
    let(:restaurant_for_edit) { Restaurant.create(recommender: 'Sara', category: 'Indian',
                     name: 'Cafe Bombay', price: '$$',
                     comments: 'The Chicken Tikka Masala was amazing and I could eat it several times a week and never 
                     get sick of it', best_dish: 'Chicken Tikka Masala', location: 'Briarcliff Road Atlanta GA 30345',
                     website:  'www.cafebombayatlanta.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven 
                     and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'bombay.jpg') }
    context 'valid attributes' do
      it 'updates restaurant' do
        patch :update, id: restaurant_for_edit.id, restaurant: { name: 'Cafe Istanbul' }
        restaurant_for_edit.reload
        expect(restaurant_for_edit.name).to eq('Cafe Istanbul')
      end

      it 'redirects to restaurants#show' do
        patch :update, id: restaurant_for_edit.id, restaurant: { name: 'Cafe Istanbul' }
        expect(response).to redirect_to(restaurant_path(restaurant_for_edit.id)) 
      end
    end

    context 'invalid attributes' do
      it 'does not update restaurant' do
        patch :update, id: restaurant_for_edit.id, restaurant: { name: '' }
        restaurant_for_edit.reload
        expect(restaurant_for_edit.name).to eq('Cafe Bombay') 
      end

      it 're-renders edit' do
        patch :update, id: restaurant_for_edit.id, restaurant: { name: '' }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes requested restaurant' do
      restaurant_for_removal = Restaurant.create(recommender: 'Sara', category: 'Indian',
                     name: 'Cafe Bombay', price: '$$',
                     comments: 'The Chicken Tikka Masala was amazing and I could eat it several times a week and never 
                     get sick of it', best_dish: 'Chicken Tikka Masala', location: 'Briarcliff Road Atlanta GA 30345',
                     website:  'www.cafebombayatlanta.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven 
                     and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'bombay.jpg')
      expect{
        delete :destroy, id: restaurant_for_removal.id
      }.to change(Restaurant, :count).by(-1)
    end

    it 'redirects to index' do
      restaurant_for_removal = Restaurant.create(recommender: 'Sara', category: 'Indian',
                     name: 'Cafe Bombay', price: '$$',
                     comments: 'The Chicken Tikka Masala was amazing and I could eat it several times a week and never 
                     get sick of it', best_dish: 'Chicken Tikka Masala', location: 'Briarcliff Road Atlanta GA 30345',
                     website:  'www.cafebombayatlanta.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven 
                     and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'bombay.jpg')
      delete :destroy, id: restaurant_for_removal.id
      expect(response).to redirect_to(restaurants_path)
    end
  end
end

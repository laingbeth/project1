require 'rails_helper'

describe 'restaurant pages' do
  subject { page }

  describe 'index' do
    Restaurant.destroy_all
    let(:restaurant1) { Restaurant.create(recommender: 'Alix', category: 'Nepali', name: 'Kathmandu',
                     price: '$', comments: 'I love it because it is hidden from a larger community and really amazing food!!',
                     best_dish: 'Any kind of Momo and Alu Paratha', location: '926 Montreal Rd Suit 2 Clarkston, GA 30021',
                     website:  'ktmkitchen.com', description: 'Only Napali restaurant in town, lot of South Asian food as well; huge menu.',
                     image_name: 'nepali.jpg') }
    let(:restaurant2) { Restaurant.create(recommender: 'Allyson',
                     category: 'Mexican',
                     name: 'Plaza Fiesta Food Court',
                     price: '$',
                     comments: 'Best deal for the price and parking is free!',
                     best_dish: 'The Pambazo',
                     location: '4166 Buford Hwy Atlanta GA 30345',
                     website:  'www.plazafiesta.net',
                     description: "Legend tells of a sandwich made from torta
               bread dipped in ranchero sauce, filled with chorizo sausage,
               potatoes, lettuce, cheese & sour cream.",
                     image_name: 'plaza_fiesta.jpeg') }

    before { visit restaurants_path }

    it { should have_title('Restaurants Index') }
    it { should have_selector('h1', text: 'All Restaurants') }

    it "lists each restaurant" do
      Restaurant.all.each do |restaurant|
        expect(page).to have_selector('li', text: restaurant.id)
      end
    end
  end
  describe 'show' do
    let(:restaurant) { Restaurant.create(recommender: 'Allyson',
                     category: 'Mexican', name: 'Plaza Fiesta Food Court',
                     price: '$',
                     comments: 'Best deal for the price and parking is free!',
                     best_dish: 'The Pambazo', location: '4166 Buford Hwy Atlanta GA 30345',
                     website: 'www.plazafiesta.net',
                     description: "Legend tells of a sandwich made from torta
                      bread dipped in ranchero sauce, filled with chorizo sausage,
                      potatoes, lettuce, cheese & sour cream.",
                     image_name: 'plaza_fiesta.jpeg') }

    before { visit restaurant_path(restaurant.id) }

    it { should have_title(restaurant.name) }
    it { should have_selector('h1', text: restaurant.name) }
  end

  describe 'new restaurant page' do
    before { visit new_restaurant_path }

    it { should have_title('Add Restaurant') }
    it { should have_selector('h1', 'Add Restaurant') }
  end
  
  describe 'create restaurant' do
    let(:submit) { 'Create Restaurant' }

    context 'valid information' do
      before do
          # fill in all necessary info in the fields
          fill_in 'Name',   with: 'Plaza Fiesta Food Court'
          fill_in 'Price',  with: '$'
      end

      it 'creates restaurant' do
        expect { click_button submit }.to change(Restaurant, :count).by(1)
      end

      describe 'after saving' do
        before { click_button submit }

        it { should have_title('Restaurant List') }
        end
      end

      context 'invalid information' do
        it 'does not create restaurant' do
          expect { click_button submit }.not_to change(Restaurant, :count)
        end

        describe 'after submission' do
          before { click_button submit }

          it { should have_title('Add Restaurant') }
          it { should have_content('error') }
        end
      end
  end    
end
 
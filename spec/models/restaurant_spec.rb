require 'rails_helper'

describe Restaurant  do
  let(:restaurant) { Restaurant.new(recommender: 'Alix', category: 'Nepali', name: 'Kathmandu',
                     price: '$', comments: 'I love it because it is hidden from a larger community and really amazing food!!',
                     best_dish: 'Any kind of Momo and Alu Paratha', location: '926 Montreal Rd Suit 2 Clarkston, GA 30021',
                     website:  'ktmkitchen.com', description: 'Only Napali restaurant in town, lot of South Asian food as well; huge menu.',
                     image_name: 'nepali.jpg') }

subject { restaurant }

it { should respond_to(:recommender) }
it { should respond_to(:category) }
it { should respond_to(:name) }
it { should respond_to(:price) }
it { should respond_to(:comments) }
it { should respond_to(:best_dish) }
it { should respond_to(:location) }
it { should respond_to(:website) }
it { should respond_to(:description) }
it { should respond_to(:image_name) }

it { should be_valid }

  describe 'validations' do
    describe 'recommender' do
      context 'not present' do
        before { restaurant.recommender = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.recommender = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.recommender = 'x' * 51 }
        it { should_not be_valid }
      end 
    end    

    describe 'category' do
      context 'not present' do
        before { restaurant.category = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.category = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.category = 'x' * 101 }
        it { should_not be_valid }
      end  
    end

    describe 'name' do
      context 'not present' do
        before { restaurant.name = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.name = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.name = 'x' * 51 }
        it { should_not be_valid }
      end  
    end

    describe 'price' do
      context 'not present' do
        before { restaurant.price = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.price = 'x' * 1 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.price = 'x' * 11 }
        it { should_not be_valid }
      end  
    end

    describe 'comments' do
      context 'not present' do
        before { restaurant.comments = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.comments = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.comments = 'x' * 255 }
        it { should_not be_valid }
      end  
    end

    describe 'best_dish' do
      context 'not present' do
        before { restaurant.best_dish = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.best_dish = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.best_dish = 'x' * 101 }
        it { should_not be_valid }
      end  
    end

    describe 'location' do
      context 'not present' do
        before { restaurant.location = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.location = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.location = 'x' * 255 }
        it { should_not be_valid }
      end  
    end

    describe 'website' do
      context 'not present' do
        before { restaurant.website = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.website = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.website = 'x' * 101 }
        it { should_not be_valid }
      end  
    end

    describe 'description' do
      context 'not present' do
        before { restaurant.description = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { restaurant.description = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { restaurant.description = 'x' * 255 }
        it { should_not be_valid }
      end  
    end

    describe 'image_name' do
      context 'not present' do
        before { restaurant.image_name = nil }
        it { should_not be_valid }
      end
    end

  end  
end






























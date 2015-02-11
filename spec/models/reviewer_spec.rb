require 'rails_helper'

describe Reviewer do
  let(:reviewer) {Reviewer.new(name: 'Allyson', relation: 'converted foodie who move to
      Atlanta from OK for college and never left') }

  subject { reviewer }

  it { should respond_to(:name) }
  it { should respond_to(:relation) } 

  it { should be_valid }

  describe 'validations' do
    describe 'name' do
      context 'not present' do
        before { reviewer.name = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { reviewer.name = 'x' * 2 }
        it { should_not be_valid }  
      end

      context 'too long' do
        before { reviewer.name = 'x' * 255 }
        it { should_not be_valid }
      end  
    end


    describe 'relation' do
      context 'not present' do
        before { reviewer.relation = nil }
        it { should_not be_valid }
      end

      context 'too short' do
        before { reviewer.relation = 'x' * 2 }
        it { should_not be_valid }
      end
      
      context 'too long' do
        before { reviewer.relation = 'x' * 255 }  
        it { should_not be_valid }
      end
    end  
    
  end
end
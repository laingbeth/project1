require 'rails_helper'

describe 'static pages' do 
	subject { page }

	describe 'home page' do
		before { visit root_path }		

		it {should have_title('Favorite Eats')}
		it {should have_selector('h1', text:"Welcome")}
	end

	describe 'about page' do	
		before { visit about_path }

		it {should have_selector('h4', text:"This is my first project")}
	end
end	
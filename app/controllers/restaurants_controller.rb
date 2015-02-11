class RestaurantsController  < ApplicationController

	def index
		@active      = 'restaurants'
		@restaurants =  Restaurant.all
	end

	def show
		@active     = 'restaurants'
		@restaurant = Restaurant.find(params[:id])
	end

  def new
    @active = 'restaurants'
    @restaurant   = Restaurant.new
  end
    
  def create
    @active = 'restaurants'
    @restaurant = new(restaurant_params)
    if @restaurant.save
      flash[:success] = "New restaurant created."
      redirect_to restaurants_path
    else
      render 'new'
    end
  end

  def edit
    @active = 'restaurants'
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      flash[:success] = "Restaurant information updated."
      redirect_to restaurant_path(@restaurant.id)
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:success] = "Restaurant information deleted."
    redirect_to restaurants_path
  end


  private

    def restaurant_params
      params.require(:restaurant).permit(:recommender, :category, :name, :price, :location, :description, :website, :comments, :best_dish, :image_name)
    end
end 

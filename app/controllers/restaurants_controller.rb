class RestaurantsController  < ApplicationController

	def index
		@active      = 'restaurants'
		@restaurants = restaurant.all
	end

	def show
		@active     = 'restaurants'
		@restaurant = Restaurant.find(params[:id])
	end

  def new
    @active = 'restaurants'
    @item   = restaurant.new
  end

  def destroy
    
  end

  # def create
  #   @item = .new(item_params)
  #   # if @item is valid, it returns a truthy value
  #   if @item.save
  #     flash[:success] = "Item created."
  #     redirect_to items_path
  #   else
  #     render 'new'
  #   end
  # end

  # private

  #   def item_params
  #     params.require(:item).permit(:name, :rating, :price,
  #                                  :description, :image_file)
  #   end
end 
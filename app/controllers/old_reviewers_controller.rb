class ReviewersController < ApplicationController
  def index
    @active    = 'reviewers'
    @reviewers = reviewer.all
  end

  def show
    @active     = 'reviewers'
    @reviewer = reviewer.find(params[:id])
  end

  def reviewer_params
      params.require(:reviewer).permit(:name, :relation)
  end
end 

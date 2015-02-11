class ReviewersController < ApplicationController
  def index
    @active      = 'reviewers'
    @reviewers = reviewer.all
  end
end 

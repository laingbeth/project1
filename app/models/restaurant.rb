class Restaurant < ActiveRecord::Base
  
  validates :recommender, presence: true, length: { minimum: 3, maximum: 50 }
  validates :category, presence: true, length: { minimum: 3, maximum: 100 }
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :price, presence: true, length: { maximum: 10 }
  validates :comments, presence: true, length: { minimum: 3, maximum: 254 }
  validates :best_dish, presence: true, length: { minimum: 3, maximum: 100 }
  validates :location, presence: true, length: { minimum: 3, maximum: 254 }
  validates :website, presence: true, length: { minimum: 3, maximum: 100 }
  validates :description, presence: true, length: { minimum: 3, maximum: 254 }
  validates :image_name, presence: true
end

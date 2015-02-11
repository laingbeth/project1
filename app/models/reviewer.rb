class Reviewer < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3, maximum: 254 }
  validates :relation, presence: true, length: { minimum: 3, maximum: 254 }
end

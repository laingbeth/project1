class Friend
  attr_reader :name, :relation, :ID

  def self.all
    [
    Reviewer.new(id: 10, name: 'Allyson', relation: 'converted foodie who move to
      Atlanta from OK for college and never left'),
    Reviewer.new(id: 20, name: 'Garrity', relation: 'world traveler
      who enjoys exploring Buford Hwy for good eats'),
    Reviewer.new( id: 30, name: 'Dave', relation: 'Miami raised but firmly rooted in
      Atlanta and willing to try anything!' ),
    Reviewer.new( id: 40, name: 'Alix', relation: 'young but adventurous eater; developing
      world traveler' ),
    Reviewer.new( id: 50, name: 'Hannah', relation: 'likes checking out new places, even if
      she is not going to eat anything there' ),
    Reviewer.new( id: 60, name: 'Sara', relation: 'interested in different cuisines and game
      to try anything once!' ),
    Reviewer.new( id: 70, name: 'Andy', relation: 'interested in exploring various cultures
      through their menus' ),
    Reviewer.new( id: 80, name: 'Bill', relation: 'came for Georgia Tech and still here... 
      enjoying finding interesting places to eat')
    ]
  end

  def self.find
    all.find do |reviewer|
      reviewer.id == id
    end
  end
end
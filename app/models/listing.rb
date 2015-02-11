class Listing
  attr_reader :ID, :description, :comments, :best_dish, :image_name
  attr_reader :recommender, :category, :website, :location, :name, :price

  def self.all
  [
    Restaurant.new(id: 10, recommender: 'Allyson',
                     category: 'Mexican',
                     name: 'Plaza Fiesta Food Court',
                     price: '$',
                     comments: 'Best deal for the price and parking is free!',
                     best_dish: 'The Pambazo',
                     location: '4166 Buford Hwy Atlanta GA 30345',
                     website:  'www.plazafiesta.net',
                     description: "Legend tells of a sandwich made from torta
               bread dipped in ranchero sauce, filled with chorizo sausage,
               potatoes, lettuce, cheese & sour cream.",
                     image_name: 'plaza_fiesta.jpeg'
                     ),
    Restaurant.new(id: 20, recommender: 'Dave',
                     category: 'Home Cookin',
                     name: 'My Home',
                     price: '$$',
                     comments: 'When someone cooks!',
                     best_dish: 'Scrambled eggs and toast',
                     location: '6789 Starfire Cir Atlanta GA 30345',
                     website:  'www.allysonskitchen.net',
                     description: 'We may not cook often but when we do it is really great.'
              ),
    Restaurant.new(id: 30, recommender: 'Alix',
                     category: 'Nepali',
                     name: 'Kathmandu',
                     price: '$',
                     comments: 'I love it because it is hidden from a larger community and really amazing food!!',
                     best_dish: 'Any kind of Momo and Alu Paratha',
                     location: '926 Montreal Rd Suit 2 Clarkston, GA 30021',
                     website:  'ktmkitchen.com',
                     description: 'Only Napali restaurant in town, lot of South Asian food as well; huge menu.',
                     image_name: 'nepali.jpg'
              ),
    Restaurant.new(id: 40, recommender: 'Allyson',
                     category: 'Chinese',
                     name: "Gu's Bistro",
                     price: '$$$',
                     comments: "We love Gu's!  It's the only Chinese restaurant in town that appeals to our whole family.  
                     From dumplings to eggplant to chicken on bamboo sticks--it's great for kids and adults!",
                     best_dish: 'tea-smoked duck',
                     location: '4166 Buford Hwy Atlanta GA 30345',
                     website:  'www.gusbistro.com',
                     description: 'Best Szechuan restaurant in Atlanta',
                     image_name: 'gusbistro.jpeg'
                     ),  
    Restaurant.new(id: 50, recommender: 'Sara',
                     category: 'Indian',
                     name: 'Cafe Bombay',
                     price: '$$',
                     comments: 'The Chicken Tikka Masala was amazing and I could eat it several times a week and never 
                     get sick of it',
                     best_dish: 'Chicken Tikka Masala',
                     location: 'Briarcliff Road Atlanta GA 30345',
                     website:  'www.cafebombayatlanta.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven 
                     (Tandoor) and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'bombay.jpg'
                     ),  
    Restaurant.new(id: 60, recommender: 'Andy',
                     category: 'Peruvian',
                     name: 'Machu Picchu',
                     price: '$$',
                     comments: 'Working my way through the menu; all good!',
                     best_dish: 'Arroz Con Mariscos',
                     location: '3375-1130 Buford Hwy. Atlanta GA 30329',
                     website:  'machupicchugeorgia.com',
                     description: 'A unique blend of traditions and ingredients combine to create one of the most 
                     delicious cuisines.',
                     image_name: 'machu_picchu.jpg'
                     ),      
  Restaurant.new(id: 70, recommender: 'Garrity',
                     category: 'New Orleans',
                     name: 'Crawfish Shack',
                     price: '$$$',
                     comments: 'Like being on Bourbon Street.',
                     best_dish: 'Po Boys',
                     location: '4337 Buford Hwy, Ste 170 Atlanta GA 30341',
                     website:  'www.crawfishshackseafood.com',
                     description: 'We emphasize quality and freshly cooked food prepared with the use of a clay oven (Tandoor) 
                     and the Indian Wok (Karahi), all to create a harmony of subtle flavors, tastes, and colors.',
                     image_name: 'CrawfisfShack.jpg'
                     ),
  Restaurant.new(id: 80, recommender: 'Garrity',
                     category: 'Korean',
                     name: 'Woo Nam Jeong - Stone Bowl House',
                     price: '$$$',
                     comments: 'Everything here really is cooked by Grandma' ,
                     best_dish: 'Bibimbap',
                     location: '5953 Buford Highway Doraville GA 30340',
                     website:  'www.facebook.com/pages/Stone-Bowl-House-Woo-Nam-Jeong/126473333883',
                     description: 'At Woo Nam Jeong (aka Stone Bowl House), chef Young Hui Han (aka Grandma) serves rigorously 
                     authentic Korean cooking.',
                     image_name: 'stone_bowl.jpg'
                     ),
Restaurant.new(id: 90, recommender: 'Garrity',
                     category: 'Vietnamese',
                     name: "Lee's Bakery",
                     price: '$',
                     comments: 'Best Banh Mi in town!',
                     best_dish: 'Banh Mi',
                     location: '4005 Buford Hwy Atlanta GA 30345',
                     website:  'www.facebook.com/LeesBakery',
                     description: 'Variety of Vietnamese food but most well know for the Bahn Mi rolls, which they supply to most 
                     Atlanta restaurants.',
                     image_name: 'Lees_Bakery.jpg'
                     ),
Restaurant.new(id: 100, recommender: 'Bill',
                     category: 'Ethiopian',
                     name: 'Desta Ethiopian Kitchen',
                     price: '$$',
                     comments: 'Everything is great; it is our go-to place for a fun dinner out!',
                     best_dish: 'Any of the tibs',
                     location: '3086 Briarcliff Rd Atlanta GA 30345',
                     website:  'destaethiopiankitchen.com',
                     description: 'Delectable Ethiopian cuisine is beautifully prepared and served by a lovely, helpful staff. 
                     Outdoor patio is perfect in good weather.',
                     image_name: 'desta.jpg'
                     ), 
Restaurant.new(id: 110, recommender: 'Bill',
                     category: 'Chinese',
                     name: 'BoBo Garden',
                     price: '$$',
                     comments: 'Fun and easy place and great to go with a group.',
                     best_dish: 'salt and pepper squid',
                     location: '5181 Buford Hwy Doraville GA 30340',
                     website:  'www.facebook.com/pages/Bo-Bo-Garden-Asian-Cuisine/100318665835',
                     description: 'Great Cantonese restaurant with a good selection of options - anyone can find
                     something good to eat here!',
                     image_name: 'BoBoGarden.jpg'
                     ),                                                                                           
    ]
  end

  def self.find(id)
    all.find do |restaurant|
      restaurant.id == id
    end
  end
end

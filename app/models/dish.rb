class Dish < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :venue,
             :required => false,
             :counter_cache => true

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

  validates :cuisine, :uniqueness => { :scope => [:dish_name], :allow_blank => true }

  validates :cuisine, :presence => true

  validates :cuisine, :inclusion => { :in => [ 'American', 'Breakfast', 'Classic', 'Dessert', 'Drink', 'French', 'Indian', 'Italian', 'Japanese', 'Salad', 'Seafood' ]  }

  validates :dish_name, :uniqueness => true

  validates :dish_name, :presence => true

  validates :dish_name, :inclusion => { :in => [ 'Bagel', 'Banana Split', 'Biscuits and Gravy', 'Bloody Mary', 'Burger', 'Charcuterie', 'Chicken Tikka Masala', 'Chili', 'Creme Brulee', 'Fried Pickles', 'Fruit Bowl', 'Gin and Tonic', 'Gnocchi', 'Grits', 'Lamb Chomps', 'Michelada', 'Mussels', 'Negroni', 'Old Fashioned', 'Pancakes', 'Pot Pie', 'Ramen', 'Spaghetti', 'Tres Leches', 'Veggie Burger', 'Watermelon Salad' ]  }

end

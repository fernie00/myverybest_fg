class Dish < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :venue,
             :required => false,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :dish_name, :uniqueness => true

  validates :dish_name, :presence => true

end

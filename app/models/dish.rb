class Dish < ApplicationRecord
  # Direct associations

  belongs_to :venue,
             :required => false,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :dish_name, :uniqueness => true

  validates :dish_name, :presence => true

end

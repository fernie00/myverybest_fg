class Dish < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :dish_name, :uniqueness => true

  validates :dish_name, :presence => true

end

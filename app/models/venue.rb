class Venue < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :nullify

  # Indirect associations

  # Validations

end

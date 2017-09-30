class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :dishes,
             :dependent => :nullify

  # Indirect associations

  # Validations

end

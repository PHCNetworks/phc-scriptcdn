module Phcscriptcdn
  class Script::Licence < ApplicationRecord

    # Relationships

    # Listing (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Validation for Form Fields
    validates :lcncname,
      presence: true

    validates :lcncdescript,
      presence: true

    validates :lcncdescription,
      presence: true

  end
end
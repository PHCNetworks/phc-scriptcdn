module Phcscriptcdn
  class Script::Author < ApplicationRecord

    # Relationships

    # Listing (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Validation for Form Fields
    validates :authorfirstname,
      presence: true

    validates :authorlastname,
      presence: true

  end
end
module Phcscriptcdn
  class Script::Licence < ApplicationRecord

    # Clean URLS
    extend FriendlyId

    # Listing (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Validation for Form Fields
    validates :lcncname,
      presence: true

    validates :lcncdescript,
      presence: true

    validates :lcncdescription,
      presence: true

    # Clean URLS Slugs
    friendly_id :lcncname, use: :slugged

  end
end
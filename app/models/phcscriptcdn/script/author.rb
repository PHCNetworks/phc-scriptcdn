module Phcscriptcdn
  class Script::Author < ApplicationRecord

    # Clean URLS
    extend FriendlyId

    # Listing (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Validation for Form Fields
    validates :authorfirstname,
      presence: true

    validates :authorlastname,
      presence: true

    # Clean URLS Slugs
    friendly_id :authorfirstname, use: :slugged

  end
end
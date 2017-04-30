module Phcscriptcdn
  class Script::Version < ApplicationRecord

    # Clean URLS
    extend FriendlyId

    # Attach to Listing (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    #  Attach to URL (None Nested)
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

    # Validation for Form Fields
    validates :scriptversion,
      presence: true

    # Clean URLS Slugs
    friendly_id :scriptversion, use: :slugged

  end
end
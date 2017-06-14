module Phcscriptcdn
  class Script::Author < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::AuthorVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Validation for Form Fields
    validates :authorfirstname,
      presence: true

    validates :authorlastname,
      presence: true

    # Clean URL Define
    friendly_id :phcscriptcdn_author_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_author_slug
      [
        [:authorfirstname, :authorlastname]
      ]
    end

  end
end

module Phcscriptcdn
  class Script::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::ListingVersions'

    # Relationships
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'
    belongs_to :author, class_name: 'Phcscriptcdn::Script::Author'
    belongs_to :version, class_name: 'Phcscriptcdn::Script::Version'
    belongs_to :licence, class_name: 'Phcscriptcdn::Script::Licence'

    # Validation for Form Fields
    validates :scripttitle,
      presence: true

    validates :scriptdescription,
      presence: true

    validates :scriptstatus,
      presence: true

    # Clean URL Define
    friendly_id :phcscriptcdn_listing_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_listing_slug
      [
        [:scripttitle]
      ]
    end

  end
end

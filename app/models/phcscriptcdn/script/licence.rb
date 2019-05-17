module Phcscriptcdn
  class Script::Licence < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'Phcscriptcdn::LicenceVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Form Fields Validation
    validates :licence_name,
      presence: true

    validates :licence_description,
      presence: true

    # Clean URL Define
    friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

    def phc_nice_url_slug
      [:licence_name]
    end

  end
end

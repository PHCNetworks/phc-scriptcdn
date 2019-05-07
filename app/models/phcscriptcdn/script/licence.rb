module Phcscriptcdn
  class Script::Licence < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::LicenceVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Validation for Form Fields
    validates :licence_name,
      presence: true

    validates :licence_description,
      presence: true

    # Clean URL Define
    friendly_id :phcscriptcdn_licence_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_licence_slug
      [
        [:licence_name]
      ]
    end

  end
end

module Phcscriptcdn
  class Script::Version < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::ScriptversionVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing', :through => :urls
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

    # Validation for Form Fields
    validates :script_version_number,
      presence: true

    # Clean URL Define
    friendly_id :phcscriptcdn_version_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_version_slug
      [
        [:script_version_number]
      ]
    end

  end
end

module Phcscriptcdn
  class Script::Version < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'Phcscriptcdn::ScriptversionVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing', :through => :urls
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

    # Form Fields Validation
    validates :script_version_number,
      presence: true

    # Clean URL Define
    friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

    def phc_nice_url_slug
      [:script_version_number]
    end

  end
end

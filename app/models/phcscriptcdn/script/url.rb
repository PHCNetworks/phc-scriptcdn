module Phcscriptcdn
  class Script::Url < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::UrlVersions'

    # Relationships
    belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'
    belongs_to :version, class_name: 'Phcscriptcdn::Script::Version'
    belongs_to :extension, class_name: 'Phcscriptcdn::Script::Extension'

    # Validation for Form Fields
    validates :scripturl,
      presence: true

    validates :scripturlrelease,
      presence: true

    validates :scripturlcdnupdate,
      presence: true

    # Clean URL Define
    friendly_id :phcscriptcdn_url_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_url_slug
      [
        [:scripturl]
      ]
    end

  end
end

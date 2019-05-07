module Phcscriptcdn
  class Script::Url < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::UrlVersions'

    # Relationships
    belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'
    belongs_to :extension, class_name: 'Phcscriptcdn::Script::Extension'
    belongs_to :version, class_name: 'Phcscriptcdn::Script::Version', optional: true

    # Validation for Form Fields
    validates :script_url,
      presence: true

    validates :script_url_release,
      presence: true

    validates :script_url_cdn_update,
      presence: true

    # Clean URL Define
    friendly_id :phcscriptcdn_url_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_url_slug
      [
        [:id]
      ]
    end

  end
end

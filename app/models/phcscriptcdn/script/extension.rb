module Phcscriptcdn
  class Script::Extension < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'Phcscriptcdn::ExtensionVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing', :through => :urls
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

    # Form Fields Validation
    validates :script_extension_name,
      presence: true

    validates :script_extension_description,
      presence: true

    validates :script_extension,
      presence: true

    # Clean URL Define
    friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

    def phc_nice_url_slug
      [:script_extension]
    end

  end
end

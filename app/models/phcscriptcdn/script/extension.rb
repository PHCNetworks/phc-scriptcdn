module Phcscriptcdn
  class Script::Extension < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::ExtensionVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing', :through => :urls
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

    # Validation for Form Fields
    validates :script_extension_name,
      presence: true

    validates :script_extension_description,
      presence: true

    validates :script_extension,
      presence: true

    # Clean URL Define
    friendly_id :phcscriptcdn_extentension_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_extentension_slug
      [
        [:script_extension]
      ]
    end

  end
end

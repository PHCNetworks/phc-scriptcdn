module Phcscriptcdn
  class Script::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::ListingVersions'

    # Relationships
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url', :dependent => :destroy
    belongs_to :author, class_name: 'Phcscriptcdn::Script::Author'
    belongs_to :licence, class_name: 'Phcscriptcdn::Script::Licence'

    # Validation for Form Fields
    validates :script_tittle,
      presence: true,
      length: { minimum: 3 }

    validates :script_description,
      presence: true,
      length: { minimum: 4 }

    validates :script_source,
      length: { minimum: 5 }

     validates :script_website,
      length: { minimum: 5 }

    validates :script_github,
      length: { minimum: 5 }

    # Clean URL Define
    friendly_id :phcscriptcdn_listing_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_listing_slug
      [
        [:script_tittle]
      ]
    end

  end
end

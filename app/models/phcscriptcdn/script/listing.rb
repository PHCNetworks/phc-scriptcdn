module Phcscriptcdn
  class Script::Listing < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => 'Phcscriptcdn::ListingVersions'

    # Relationships
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url', :dependent => :destroy
    belongs_to :author, class_name: 'Phcscriptcdn::Script::Author'
    belongs_to :licence, class_name: 'Phcscriptcdn::Script::Licence'

    # Form Fields Validation
    validates :script_title,
    presence: true,

    validates :script_description,
    presence: true

    validates :script_source,
    format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :script_website,
    format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    validates :script_github,
    format: { with: URI::regexp(%w(http https)), message: "Please follow this URL format http or https://www.**********.com" }

    # Clean URL Define
    friendly_id :phc_nice_url_slug, use: [:slugged, :finders]

    def phc_nice_url_slug
      [:script_title]
    end

  end
end

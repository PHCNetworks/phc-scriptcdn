module Phcscriptcdn
  class Script::Listing < ApplicationRecord

    # Clean URLS
    extend FriendlyId

    # Attach to URL (Nested)
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

    # Attach to Author (None Nested)
    belongs_to :author, class_name: 'Phcscriptcdn::Script::Author'

    # Attach to Version (None Nested)
    belongs_to :version, class_name: 'Phcscriptcdn::Script::Version'

    # Attach to Licence (None Nested)
    belongs_to :licence, class_name: 'Phcscriptcdn::Script::Licence'

    # Validation for Form Fields
    validates :scripttitle,
      presence: true

    validates :scriptdescription,
      presence: true

    validates :scriptstatus,
      presence: true

    # Clean URLS Slugs
    friendly_id :scripttitle, use: :slugged

  end
end
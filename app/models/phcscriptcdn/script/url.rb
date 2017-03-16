module Phcscriptcdn
  class Script::Url < ApplicationRecord

    # Relationships

    # Attach to Listings (Nested)
    belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'

    # Attach to Version (None Nested)
    belongs_to :version, class_name: 'Phcscriptcdn::Script::Version'

    # Attach to Extension (None Nested)
    belongs_to :extension, class_name: 'Phcscriptcdn::Script::Extension'

    # Validation for Form Fields
    validates :scripturl,
      presence: true

    validates :scripturlrelease,
      presence: true

    validates :scripturlcdnupdate,
      presence: true

  end
end
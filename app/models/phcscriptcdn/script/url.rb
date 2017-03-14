module Phcscriptcdn
  class Script::Url < ApplicationRecord

    # Relationships

    # Attach to Listings (Nested)
    belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'

    # Attach to Version (None Nested)
    belongs_to :version, class_name: 'Phcscriptcdn::Script::Version'

    # Attach to Extension (None Nested)
    belongs_to :extension, class_name: 'Phcscriptcdn::Script::Extension'

  end
end
module Phcscriptcdn
  class Script::Version < ApplicationRecord

    # Relationships

    # Attach to Listing (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    #  Attach to URL (None Nested)
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

  end
end
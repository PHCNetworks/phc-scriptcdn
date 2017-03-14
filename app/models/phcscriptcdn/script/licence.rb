module Phcscriptcdn
  class Script::Licence < ApplicationRecord

    # Relationships

    # Listing (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

  end
end
module Phcscriptcdn
  class Script::Author < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Add Paper Trail
    has_paper_trail :class_name => 'Phcscriptcdn::AuthorVersions'

    # Relationships
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

    # Clean URL Define
    friendly_id :phcscriptcdn_author_slug, use: [:slugged, :finders]

    # Define for Multiple Records
    def phcscriptcdn_author_slug
      [
        [:author_first_name, :author_last_name]
      ]
    end

  end
end

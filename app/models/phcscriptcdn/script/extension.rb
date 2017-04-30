module Phcscriptcdn
  class Script::Extension < ApplicationRecord

    # Clean URLS
    extend FriendlyId

    # URLs & Extensions (None Nested)
    has_many :listings, class_name: 'Phcscriptcdn::Script::Listing', :through => :urls
    has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

    # Validation for Form Fields
    validates :scriptextensionname,
      presence: true

    validates :scriptextensiondes,
      presence: true

    validates :scriptextension,
      presence: true

    # Clean URLS Slugs
    friendly_id :scriptextensionname, use: :slugged

  end
end
module Phcscriptcdn
	class Script::Url < ApplicationRecord

		# Relationships

		# Attach to Listings
		belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'

	end
end

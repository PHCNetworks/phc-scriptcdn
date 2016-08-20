module Phcscriptcdn
	class Script::Author < ApplicationRecord

		# Relationships

		# Attach to Listings
		belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'

	end
end

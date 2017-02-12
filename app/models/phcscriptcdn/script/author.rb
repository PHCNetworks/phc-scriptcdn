module Phcscriptcdn
	class Script::Author < ApplicationRecord

		# Relationships

		# Listing (None Nested)
		has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

	end
end

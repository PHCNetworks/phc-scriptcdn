module Phcscriptcdn
	class Script::Version < ApplicationRecord

		#Relationships

		# URL Un-Nested
		has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

		# Listing Un-Nested
		has_many :listings, class_name: 'Phcscriptcdn::Script::Listing'

	end
end

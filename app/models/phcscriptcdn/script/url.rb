module Phcscriptcdn
	class Script::Url < ApplicationRecord

		# Relationships

		# Attach to Listings
		belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'

		# Attach to Version
		belongs_to :version, class_name: 'Phcscriptcdn::Script::Version'

		# Attach to Extensions
		belongs_to :extension, class_name: 'Phcscriptcdn::Script::Extension'

	end
end

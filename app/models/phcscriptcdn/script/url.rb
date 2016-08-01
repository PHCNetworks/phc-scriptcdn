module Phcscriptcdn
	class Script::Url < ApplicationRecord

		# Relationships
		belongs_to :listing, class_name: 'Phcscriptcdn::Script::Listing'

	end
end

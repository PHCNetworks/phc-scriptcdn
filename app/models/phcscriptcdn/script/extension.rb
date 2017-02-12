module Phcscriptcdn
	class Script::Extension < ApplicationRecord

		# Relationships

		# URLs & Extensions (None Nested)
		has_many :listings, class_name: 'Phcscriptcdn::Script::Listing', :through => :urls
		has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

	end
end

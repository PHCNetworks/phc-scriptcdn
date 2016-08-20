module Phcscriptcdn
	class Script::Listing < ApplicationRecord

		# Relationships
		#has_many :versions, class_name: 'Phcscriptcdn::Script::Version'
		#has_many :informations, class_name: 'Phcscriptcdn::Script::Version'
		# URL Nested
		has_many :urls, class_name: 'Phcscriptcdn::Script::Url'
		# Author Nested
		has_many :authors, class_name: 'Phcscriptcdn::Script::Author'

	end
end

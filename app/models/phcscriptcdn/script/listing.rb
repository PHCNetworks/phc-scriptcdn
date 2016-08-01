module Phcscriptcdn
	class Script::Listing < ApplicationRecord

		# Relationships
		#has_many :versions, class_name: 'Phcscriptcdn::Script::Version'
		#has_many :informations, class_name: 'Phcscriptcdn::Script::Version'
		has_many :urls, class_name: 'Phcscriptcdn::Script::Version'
		#has_many :authors, class_name: 'Phcscriptcdn::Script::Version'

	end
end

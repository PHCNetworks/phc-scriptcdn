module Phcscriptcdn
	class Scriptcdn::Main < ActiveRecord::Base

		# Relationships
		has_many :versions, class_name: 'Scriptcdn::Version'
		has_many :informations, class_name: 'Scriptcdn::Information'
		has_many :urls, class_name: 'Scriptcdn::Url'
		has_many :authors, class_name: 'Scriptcdn::Author'

	end
end

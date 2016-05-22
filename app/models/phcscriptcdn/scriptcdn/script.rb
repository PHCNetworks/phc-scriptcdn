module Phcscriptcdn
	class Scriptcdn::Script < ActiveRecord::Base

		# Relationships
		has_many :scriptversions
		has_many :scripturls

		# Validation for Form Fields
		validates :scrptname,
			uniqueness: true,
			presence: true,
			length: { minimum: 3 }

	end
end

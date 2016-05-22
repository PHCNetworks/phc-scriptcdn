module Phcscriptcdn
	class Scriptcdn::Scripturl < ActiveRecord::Base

		# Relationships
		belongs_to :scriptversion

		# Validation for Form Fields
		validates :scrpturlphc,
			uniqueness: true,
			presence: true,
			length: { minimum: 3 }

	end
end

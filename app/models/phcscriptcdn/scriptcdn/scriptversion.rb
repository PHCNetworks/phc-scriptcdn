module Phcscriptcdn
	class Scriptcdn::Scriptversion < ActiveRecord::Base

		# Relationships
		belongs_to :script
		has_many :scripturls

		# Validation for Form Fields
		validates :scrptversionpakname,
			uniqueness: true,
			presence: true,
			length: { minimum: 3 }

	end
end

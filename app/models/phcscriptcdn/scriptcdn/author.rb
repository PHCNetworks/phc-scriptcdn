module Phcscriptcdn
	class Scriptcdn::Author < ActiveRecord::Base

		# Relationships
		belongs_to :main, class_name: 'Scriptcdn::Main'

	end
end

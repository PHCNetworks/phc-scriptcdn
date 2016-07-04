module Phcscriptcdn
	class Scriptcdn::Information < ActiveRecord::Base

		# Relationships
		belongs_to :main, class_name: 'Scriptcdn::Main'

	end
end

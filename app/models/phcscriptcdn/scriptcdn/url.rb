module Phcscriptcdn
	class Scriptcdn::Url < ActiveRecord::Base

		# Relationships
		belongs_to :main, class_name: 'Scriptcdn::Main'

	end
end

module Phcscriptcdn
	class Scriptcdn::Version < ActiveRecord::Base
	  
		# Relationships
		belongs_to :main, class_name: 'Scriptcdn::Main'

	end
end

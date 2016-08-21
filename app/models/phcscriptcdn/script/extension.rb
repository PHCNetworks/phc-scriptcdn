module Phcscriptcdn
	class Script::Extension < ApplicationRecord

		# URL Un-Nested
		has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

	end
end

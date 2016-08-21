module Phcscriptcdn
	class Script::Version < ApplicationRecord

		# URL Un-Nested
		has_many :urls, class_name: 'Phcscriptcdn::Script::Url'

	end
end

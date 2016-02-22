module Phcscriptcdn
	class Scriptcdn::Scriptversion < ActiveRecord::Base
		belongs_to :script
		belongs_to :scripturl
	end
end

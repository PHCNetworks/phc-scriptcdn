module Phcscriptcdn
	class Scriptcdn::Scriptversion < ActiveRecord::Base
		belongs_to :script
		has_many :scripturls
	end
end

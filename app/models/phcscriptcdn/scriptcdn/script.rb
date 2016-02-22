module Phcscriptcdn
	class Scriptcdn::Script < ActiveRecord::Base
		has_many :scriptversions
		has_many :scripturls
	end
end

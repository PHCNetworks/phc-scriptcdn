module Phcscriptcdn
  class Scriptcdn::Scripturl < ActiveRecord::Base
    belongs_to :scriptversion
    belongs_to :script
  end
end

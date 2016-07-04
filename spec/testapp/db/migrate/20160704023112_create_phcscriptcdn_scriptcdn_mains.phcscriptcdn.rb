# This migration comes from phcscriptcdn (originally 20160704011727)
class CreatePhcscriptcdnScriptcdnMains < ActiveRecord::Migration[5.0]
	def change
		create_table :phcscriptcdn_scriptcdn_mains do |t|

			t.string :scriptname

			t.timestamps null: false

		end
	end
end

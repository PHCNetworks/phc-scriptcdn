class CreatePhcscriptcdnScriptLicences < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_script_licences do |t|

			t.string :lcncname

			t.string :lcnccomgpl
			t.string :lcncarvlfsf
			t.string :lcncarvlosi
			t.string :lcncarvlcopyfree
			t.string :lcncarvldebian
			t.string :lcncarvlfedora

			t.string :user_id
			t.string :membership_id
			t.string :oganization_id

			t.timestamps

		end

	end
end

class CreatePhcscriptcdnScriptExtensions < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_script_extensions do |t|

			t.string :scriptextension
			t.string :scriptextensiondes
			t.string :scriptextensiontxt

			t.timestamps

		end

	end
end

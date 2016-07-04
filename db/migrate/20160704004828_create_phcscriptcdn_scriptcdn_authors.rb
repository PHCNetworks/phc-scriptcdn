class CreatePhcscriptcdnScriptcdnAuthors < ActiveRecord::Migration[5.0]
	def change

		create_table :phcscriptcdn_scriptcdn_authors do |t|

			t.string :authorfirstname
			t.string :authorlastname

			t.string :authorwebsite
			t.string :authorgithub
			t.string :authortwitter

			t.references :main, index: true

			t.timestamps null: false

		end

	end
end

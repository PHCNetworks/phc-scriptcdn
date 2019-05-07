# This migration comes from phcscriptcdn (originally 20160821183714)
class CreatePhcscriptcdnScriptAuthors < ActiveRecord::Migration[5.2]
  def change

    create_table :phcscriptcdn_script_authors do |t|

      t.string :author_first_name
      t.string :author_last_name

      t.string :author_website
      t.string :author_github

      t.string :slug

      t.string :user_id

      t.timestamps

    end

  end
end

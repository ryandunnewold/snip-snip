class CreateSnippetTags < ActiveRecord::Migration
  def change
    create_table :snippet_tags do |t|
      t.references :snippet, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

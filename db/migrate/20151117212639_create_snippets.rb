class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.references :user, index: true, foreign_key: true
      t.text :content
      t.string :title
      t.integer :language, default: 0
      t.boolean :public, default: false

      t.timestamps null: false
    end
  end
end

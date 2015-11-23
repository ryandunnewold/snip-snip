class AddPrivacyToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :private, :boolean, default: true
  end
end

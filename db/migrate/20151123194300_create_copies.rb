class CreateCopies < ActiveRecord::Migration
  def change
    create_table :copies do |t|
      t.references :user, index: true, foreign_key: true
      t.references :snippet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :title, null: false
      t.text :content
      t.date :date
      t.time :time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

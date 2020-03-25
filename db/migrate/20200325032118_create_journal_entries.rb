class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :title, null: false
      t.text :contents
      t.references :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end

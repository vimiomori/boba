class CreateLogSpreads < ActiveRecord::Migration[6.0]
  def change
    create_table :log_spreads do |t|
      t.integer :type, null: false
      t.references :journal, null: false, forenign_key: true
    end
  end
end

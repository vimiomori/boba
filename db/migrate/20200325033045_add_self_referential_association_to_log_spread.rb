class AddSelfReferentialAssociationToLogSpread < ActiveRecord::Migration[6.0]
  def change
    change_table :log_spreads do |t|
      t.belongs_to :parent_log, foreign_key: { to_table: :log_spreads }

      t.timestamps
    end
  end
end

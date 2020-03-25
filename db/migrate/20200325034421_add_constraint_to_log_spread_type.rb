class AddConstraintToLogSpreadType < ActiveRecord::Migration[6.0]
  def change
    change_column :log_spreads, :type, :integer, { null: false, default: 0 }
  end
end

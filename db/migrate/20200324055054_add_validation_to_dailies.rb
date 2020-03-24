class AddValidationToDailies < ActiveRecord::Migration[6.0]
  def change
    change_column :dailies, :date, :date, { null: false }
  end
end

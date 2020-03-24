class AddDateToDaily < ActiveRecord::Migration[6.0]
  def change
    add_column :dailies, :date, :date
  end
end

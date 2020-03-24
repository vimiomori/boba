class AddValidationToTodos < ActiveRecord::Migration[6.0]
  def change
    change_column :to_dos, :name, :string, { null: false }
  end
end

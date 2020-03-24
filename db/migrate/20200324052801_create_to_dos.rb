class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.text :details
      t.boolean :done
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

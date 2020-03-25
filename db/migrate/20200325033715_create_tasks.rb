class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :details, null: false
      t.boolean :done, null: false, default: false
      t.integer :type, null: false, default: 0
      t.boolean :repeat, null: false, default: false
      t.references :log_spread, null: false, foreign_key: true

      t.timestamps
    end
  end
end

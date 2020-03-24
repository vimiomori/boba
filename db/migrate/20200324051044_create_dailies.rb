class CreateDailies < ActiveRecord::Migration[6.0]
  def change
    create_table :dailies do |t|
      date: date, null: false

      t.timestamps
    end
  end
end

class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date, null: false
      t.references :user, foreign_key: true, null: false
      t.references :treatment, foreign_key: true, null: false
      t.timestamps
    end
  end
end

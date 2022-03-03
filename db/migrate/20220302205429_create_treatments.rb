class CreateTreatments < ActiveRecord::Migration[6.1]
  def change
    create_table :treatments do |t|
      t.string :address, null: false
      t.date :availability, null: false
      t.string :specialty, null: false
      t.float :price, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

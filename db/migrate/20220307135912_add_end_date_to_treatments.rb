class AddEndDateToTreatments < ActiveRecord::Migration[6.1]
  def change
    add_column :treatments, :end_date, :date

    rename_column :treatments, :availability, :start_date
  end
end

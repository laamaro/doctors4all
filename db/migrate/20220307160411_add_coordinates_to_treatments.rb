class AddCoordinatesToTreatments < ActiveRecord::Migration[6.1]
  def change
    add_column :treatments, :latitude, :float
    add_column :treatments, :longitude, :float
  end
end

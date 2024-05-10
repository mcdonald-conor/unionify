class AddCoordinatesToCelebrants < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrants, :latitude, :float
    add_column :celebrants, :longitude, :float
  end
end

class AddCeremonyToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :ceremony, :string
  end
end

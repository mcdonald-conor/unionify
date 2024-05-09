class AddBioToCelebrants < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrants, :bio, :text
  end
end

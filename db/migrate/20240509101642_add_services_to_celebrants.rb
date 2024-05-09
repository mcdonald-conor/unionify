class AddServicesToCelebrants < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrants, :services, :text
  end
end

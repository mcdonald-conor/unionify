class AddYearsExperienceToCelebrants < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrants, :years_experience, :integer
  end
end

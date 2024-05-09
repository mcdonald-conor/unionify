class AddLanguagesToCelebrants < ActiveRecord::Migration[7.1]
  def change
    add_column :celebrants, :languages, :text
  end
end

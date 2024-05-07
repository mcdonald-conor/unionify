class CreateCelebrants < ActiveRecord::Migration[7.1]
  def change
    create_table :celebrants do |t|
      t.string :username
      t.string :location
      t.float :rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

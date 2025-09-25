class CreatePreferences < ActiveRecord::Migration[8.0]
  def change
    create_table :preferences do |t|
      t.string :last_column
      t.string :direction

      t.timestamps
    end
  end
end

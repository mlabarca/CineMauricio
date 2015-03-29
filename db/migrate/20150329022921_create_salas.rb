class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.integer :sala_number
      t.integer :seat_rows
      t.integer :seat_columns
      t.timestamps
    end
  end
end

class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :time
      t.integer :user_id
      t.integer :court_id
      
      t.timestamps
    end
  end
end

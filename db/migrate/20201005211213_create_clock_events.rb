class CreateClockEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_events do |t|
      t.string :name
      t.string :clock_type

      t.timestamps
    end
  end
end

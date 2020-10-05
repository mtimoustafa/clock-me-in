class CreateClockEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_events do |t|

      t.timestamps
    end
  end
end

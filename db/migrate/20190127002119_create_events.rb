class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :date
      t.string :location
      t.string :event_picture
      t.string :buy_link

      t.timestamps
    end
  end
end

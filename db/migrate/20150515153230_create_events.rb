class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.timestamp :start
      t.timestamp :finish
      t.string :name
      t.string :track
    end
  end
end

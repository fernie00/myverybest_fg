class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :venue_address
      t.string :venue_neighborhood

      t.timestamps

    end
  end
end

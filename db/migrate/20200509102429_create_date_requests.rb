class CreateDateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :date_requests do |t|
      t.datetime :time_range_from
      t.datetime :time_range_to
      t.datetime :confirmed_at
      t.references :company

      t.timestamps
    end
  end
end

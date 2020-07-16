class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.references :provider
      t.references :client
      t.string :notes

      t.timestamps
    end
  end
end

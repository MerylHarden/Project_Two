class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.references :user, index: true
      t.references :pup

      t.timestamps
    end
  end
end


class CreatePups < ActiveRecord::Migration
  def change
    create_table :pups do |t|
      t.string :puppy_name
      t.string :therapist_name

      t.timestamps
    end
  end
end

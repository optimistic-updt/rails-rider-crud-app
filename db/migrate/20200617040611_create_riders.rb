class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :firstname
      t.string :lastname
      t.integer :number

      t.timestamps
    end
  end
end

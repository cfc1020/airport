class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :state, null: false

      t.timestamps null: false
    end
  end
end

class CreateAirplaneStateTransitions < ActiveRecord::Migration
  def change
    create_table :airplane_state_transitions do |t|
      t.references :airplane, index: true, foreign_key: true
      t.string :event
      t.string :from
      t.string :to
      t.timestamp :created_at
    end
  end
end

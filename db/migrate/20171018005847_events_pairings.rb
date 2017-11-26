class EventsPairings < ActiveRecord::Migration[5.0]
  def change
    create_table :events_pairings do |t|
      t.belongs_to :event, index:true
      t.belongs_to :pairing, index:true
    end
  end
end

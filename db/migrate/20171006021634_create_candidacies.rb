class CreateCandidacies < ActiveRecord::Migration[5.0]
  def change
    create_table :candidacies do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event
      t.belongs_to :pairing, index: true
      t.belongs_to :other_candidacy, index: true
      t.boolean :primary?
      t.string :status
      t.float :rating

      t.timestamps
    end
  end
end

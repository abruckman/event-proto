class UsersPairings < ActiveRecord::Migration[5.0]

  def change
    create_table :users_pairings do |t|
      t.belongs_to :user, index:true
      t.belongs_to :pairing, index:true
    end
  end
end

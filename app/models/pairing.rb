class Pairing < ApplicationRecord
  has_many :candidacies
  has_many :users, through: :candidacies
  has_and_belongs_to_many :events
end

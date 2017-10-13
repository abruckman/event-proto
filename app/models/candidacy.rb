class Candidacy < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :pairing
  has_one :other_candidacy, class_name: "Candidacy"
  has_one :pair through: :other_candidacy , class_name: "User"
  has_one :pair_event through: :other_candidacy, class_name: "Event"
end

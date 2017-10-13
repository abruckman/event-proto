class User < ApplicationRecord
  has_many :interests
  has_many :events, through: :interests
  has_many :candidacies
  has_many :pairings, through: :candidacies
  has_many :candidates, through: :candidacies, class_name: "User"
  has_many :users, through: :events
    #code

  def setInterest_ranks()
    @interests.each_with_index do |interest, index|
      interest.interest_rank = index
    end
  end

end

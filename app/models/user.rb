class User < ApplicationRecord
  has_many :interests
  has_many :events, through: :interests
  # has_many :candidacies
  # has_many :pairings, through: :candidacies
  # has_many :candidates, through: :candidacies, class_name: "User"
  has_many :users, -> { distinct }, through: :events
  has_and_belongs_to_many :pairings
    #code
  # @possibles = self.users

  # attr_accessor :users, :interests
  # def init
  #   @interests = self.interests
  #
  # end

  def setInterest_ranks()
    listo = self.interests
    listo.each_with_index do |interest, index|
      print interest.id
      print index
      print interest
      Interest.update(interest.id, {interest_rank: index})
    end
  end

  # def makePairings()
  #   @possibles.each do |possible|
  #     if Pairing.exists(:users=>[possible, self]) || Pairing.exists(:users=>[possible, self])
  #       p "already exists"
  #     else
  #       pairing = Pairing.new({:users => [self, possible]})
  #       pairing.save
  #     end
  #   end
  # end


end

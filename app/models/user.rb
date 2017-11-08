class User < ApplicationRecord
  has_many :interests
  has_many :events, through: :interests
  # has_many :candidacies
  # has_many :pairings, through: :candidacies
  # has_many :candidates, through: :candidacies, class_name: "User"
  has_many :users, -> { distinct }, through: :events
  has_and_belongs_to_many :pairings
  has_many :pairs, ->{distinct}, through: :pairings, source: :users, class_name: "User"
    #code
  # @possibles = self.users

  # attr_accessor :users, :interests
  # def init
  #   @interests = self.interests
  #
  # end

  def set_interest_ranks()
    listo = self.interests
    listo.each_with_index do |interest, index|
      Interest.update(interest.id, {interest_rank: index})
    end
  end

  def set_pairs()
    possibles = self.users
    possibles.each do |pair|
      unless self.pairs.include?(pair)
        if self.genderCheck(pair)
          new_pairing = Pairing.new({:users=>[self, pair]})
          new_pairing.save
        end
      end
    end
  end


  def genderCheck(other)
    if self.gender == 'm' && other.interested_m? == true
      if other.gender == 'm' && self.interested_m? == true
        return true
      elsif other.gender == 'f' && self.interested_f? == true
        return true
      else
        return false
      end
    elsif self.gender == 'f' && other.interested_f? == true
      if other.gender == 'm' && self.interested_m? == true
        return true
      elsif other.gender == 'f' && self.interested_f? == true
        return true
      else
        return false
      end
    else
      return false
    end


  end


end

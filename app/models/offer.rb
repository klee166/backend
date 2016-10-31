class Offer < ApplicationRecord
  attr_reader :name, :numUsed, :maxUse

  def initialize(name, numUsed, maxUse)
    @name, @numUsed, @maxUse = name, numUsed, maxUse
  end

  #increment the number of used ones
  def increase_used
    self[:numUsed] += 1
  end
end

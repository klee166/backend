class Offer < ApplicationRecord
  attr_reader :name, :numUsed, :maxUse

  def initialize(name, numUsed, maxUse)
    @name, @numUsed, @maxUse = name, numUsed, maxUse
  end

  def increaseUsed()
    numUsed += 1
  end
end

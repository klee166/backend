class Event < ApplicationRecord
  attr_accessor :isLit, :name
  attr_reader :id, :expectedNum, :name, :ticketPrice, :description, :location, :isLit, :numAddedToCal, :numCheckIn
  
  composed_of :offers, class_name: "Offer", mapping: [%w(name), %w(numUsed), %w(maxUse)]
  composed_of :locations, class_name: "Location", mapping: [%w(building), %w(room), %w(latitude), %w(longitude)]

  def initialize(id, expectedNum, name, ticketPrice, description, location, isLit, numAddedToCal, numCheckIn)
    @id, @expectedNum, @name, @ticketPrice, @description, @location, @isLit, @numAddedToCal, @numCheckIn = id, expectedNum, name, ticketPrice, description, location, isLit, numAddedToCal, numCheckIn
  end

  # sets lit value
  def isLit=(val)
    self[:isLit] = val
  end

  # edits the name of the event
  def name=(val)
    self[:name] = val
  end

  #edits the description of the event
  def description=(val)
    self[:description] = val
  end

  #increments the number of checkins 
  def add_num_checkin
    self[:numCheckIn] += 1
  end

  # get the number of added events to calendar
  def numAddedToCal
    self[:numAddedToCal]
  end

  # increments the number of added events to calendar
  def inc_AddedToCal
    self[:numAddedToCal] += 1
  end

end

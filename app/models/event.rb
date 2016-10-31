class Event < ApplicationRecord
  composed_of :offers, class_name: "Offer", mapping: [%w(name), %w(numUsed), %w(maxUse)]
  composed_of :locations, class_name: "Location", mapping: [%w(building), %w(room), %w(latitude), %w(longitude)]
end

class Event < ApplicationRecord
  composed_of :offers, class_name: "Offer", mapping: [%w(name), %w(numUsed), %w(maxUse)]
end

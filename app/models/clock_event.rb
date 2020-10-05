class ClockEvent < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :clock_type, inclusion: { in: ['in', 'out'], message: 'Please select a valid clock type.' }
end

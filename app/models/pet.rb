class Pet < ApplicationRecord
  validates :name, presence: true
  # Make sure that our pets are inside a specific list of species
  validates :species, inclusion: { in:  %w[ant dog cat snake raccoon hamster turtle parrot] }
end

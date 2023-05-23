class Pet < ApplicationRecord
  SPECIES = %w[ant dog cat snake raccoon hamster turtle parrot]

  validates :name, presence: true
  # Make sure that our pets are inside a specific list of species
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    "Found #{(Date.today - found_on).to_i} days ago"
  end
end

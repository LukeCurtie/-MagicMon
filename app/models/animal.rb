class Animal < ApplicationRecord
  belongs_to :user
  ABILITIES = %w(Speed Water Fire Air Earth Intellect Teleport)
  validates :abilities, inclusion: { in: ABILITIES }
end

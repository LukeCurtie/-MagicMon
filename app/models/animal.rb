class Animal < ApplicationRecord
  belongs_to :user
  ABILITIES = %w[Speed Water Fire Air Earth Intellect Teleport]
  validates :abilities, inclusion: { in: ABILITIES }
  validates :name, :location, :age, :price, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true

end

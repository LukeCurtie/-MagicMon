class Ability < ApplicationRecord
  has_many :animal_abilities
  has_many :animals, through: :animal_abilities
  validates :name, presence: true, uniqueness: true
end

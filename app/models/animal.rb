class Animal < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :animal_abilities
  has_many :abilities, through: :animal_abilities

  validates :name, :location, :age, :price, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
end

class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    has_many :reviews, dependent: :destroy

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: { maximum: 1000 }
    validates :rating, presence: true, :inclusion => 1..5


end
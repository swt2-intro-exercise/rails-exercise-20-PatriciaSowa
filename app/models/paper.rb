class Paper < ApplicationRecord
    has_and_belongs_to_many :authors

    scope :year, ->(number) { where("year = ?", number) }

    validates :title, presence: true, length: { minimum: 1 }
    validates :venue, presence: true, length: { minimum: 1 }
    validates :year, presence: true, numericality: true
end

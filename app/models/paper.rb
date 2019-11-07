class Paper < ApplicationRecord
	validates :title, presence: true
	validates :venue, presence: true
	validates :year, numericality: { only_integer: true }, presence: true
	has_and_belongs_to_many :authors
	scope :published, -> (time) { where("year = ?", time) if time.present? }
end

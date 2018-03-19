class Harbour < ApplicationRecord
  has_many :movements, dependent: :nullify # custom TBD for archive

  validates :country, presence: true
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  geocoded_by :full_address
  after_validation :geocode #:address_changed?

  def full_address
    "#{address}, #{country}"
  end
end

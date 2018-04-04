class Movement < ApplicationRecord
  belongs_to :harbour
  belongs_to :type

  # delegate :code, :flow, :to => :type

  validates :year, presence: true, uniqueness: { scope: [:harbour, :type ],
    message: "already exists for harbour and flow" }
  validates :volume, presence: true, numericality: true

  def type_identification
    "#{self.type.code} #{self.type.flow}"
  end
end

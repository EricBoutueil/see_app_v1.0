class Movement < ApplicationRecord
  belongs_to :harbour
  belongs_to :type

  validates :date, presence: true, uniqueness: { scope: [:harbour, :type ],
    message: "already exists for harbour and flow" }
  validates :volume, presence: true, numericality: true

end

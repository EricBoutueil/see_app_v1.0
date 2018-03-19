class Movement < ApplicationRecord
  belongs_to :harbour
  belongs_to :type

  validates :date, presence: true, uniqueness: { scope: [:harbour, :type ],
    message: "already exists for harbour and flow" }
  validates :volume, presence: true, numericality: true

  def type_identification
    "#{self.type.code} #{self.type.tot_imp_exp}"
  end

  def index
    @harbours = Harbour.where.not(latitude: nil, longitude: nil)

    @markers = @harbours.map do |harbour|
      {
        lat: harbour.latitude,
        lng: harbour.longitude#,
        # infoWindow: { content: render_to_string(partial: "/harbours/map_box", locals: { flat: flat }) }
      }
    end
  end

end

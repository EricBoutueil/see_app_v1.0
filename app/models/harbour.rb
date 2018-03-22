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

  def filter_by_year
    filtered_by_year = []
    if (params[:year])
      filtered_by_year = @harbours.map do |harbour|
        harbour.movement.where(year: params[:year])
      end
    else
      filtered_by_year = [Type.maximum("year")]
    end
    return filtered_by_year
  end

  def filter_by_flow
    filtered_by_flow = []
    if (params[:flow])
      filtered_by_flow = @harbours.map do |harbour|
        harbour.movements.select do |movement|
          movement.types.where(flow: params[:flow])
        end
      end
    else
      filtered_by_flow = ["tot"]
    end
    return filtered_by_flow
  end

  def filter_by_code
    filtered_by_code = []
    if (params[:code])
      filtered_by_code = @harbours.map do |harbour|
        harbour.movements.select do |movement|
          movement.types.where(code: params[:code])
        end
      end
    else
      filtered_by_code = ["z"]
    end
    return filtered_by_code
  end

  # def sum_tot_vol_by_type(code, flow)
  #   self.movements.group(:code (&?) :flow).where(code: code, flow: flow).pluck(:volume).sum
  # end

end


# NOTES:
# .pluck = .map in pur SQL

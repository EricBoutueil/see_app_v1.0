class Type < ApplicationRecord
  has_many :movements, dependent: :nullify # custom TBD for archive

  enum tot_imp_exp: [:tot, :imp, :exp]

  validates :code, presence: true, uniqueness: { scope: :tot_imp_exp,
    message: "already exists for this flow" }
  validates :tot_imp_exp, presence: true

  def name
    "#{code} #{tot_imp_exp}"
  end
end

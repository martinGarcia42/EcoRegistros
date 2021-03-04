class Cultivo < ApplicationRecord
  belongs_to :parcela

  has_many :intervencions, :tratamientos, :recoleccions
end

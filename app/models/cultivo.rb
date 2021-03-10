class Cultivo < ApplicationRecord
  belongs_to :parcela

  has_many :intervencions
  has_many :tratamientos
  has_many :recoleccions
end

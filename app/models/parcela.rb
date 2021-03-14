class Parcela < ApplicationRecord
  belongs_to :farm
  
  has_many :cultivos
end

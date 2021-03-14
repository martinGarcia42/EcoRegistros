class ParcelaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :tipo, :farm_id

  has_many :cultivos 
end

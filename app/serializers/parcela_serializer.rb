class ParcelaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :tipo, :farm_id, :id

  has_many :cultivos 
end

class ParcelaSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :type, :farm_id

  has_many :cultivos 
end

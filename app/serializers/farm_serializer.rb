class FarmSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id

  has_many :parcelas
end

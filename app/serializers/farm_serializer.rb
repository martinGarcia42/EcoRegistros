class FarmSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  has_many :parcelas
end

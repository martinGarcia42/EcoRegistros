class CultivoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :variedad, :plantas, :observaciones, :parcela_id

  has_many :intervencions, :tratamientos, :recoleccions
end

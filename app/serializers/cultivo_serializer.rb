class CultivoSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :variedad, :plantas, :observaciones, :parcela_id
  
    has_many :intervencions
    has_many :tratamientos
    has_many :recoleccions
  end
  
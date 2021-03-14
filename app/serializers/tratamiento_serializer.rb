class TratamientoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :producto, :dosis, :caldo, :fecha, :observaciones, :cultivo_id, :id
end

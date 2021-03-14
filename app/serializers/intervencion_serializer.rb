class IntervencionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :action, :fecha, :observaciones, :cultivo_id, :id
end

class RecoleccionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :plantas, :kilosdextrio, :fecha, :observaciones, :cultivo_id, :id
end

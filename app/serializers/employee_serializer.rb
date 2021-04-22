class EmployeeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :admin, :farm_id
end

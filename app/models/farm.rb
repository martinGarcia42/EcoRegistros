class Farm < ApplicationRecord
    has_many :parcelas
    has_many :employees
end

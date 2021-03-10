# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
farm_attributes = [
    { name: "Finca El Cabillon" },
    { name: "Mi casa Papi" },
    { name: "la tuya" },
  ]  

farm_attributes.each do |attributes|
    Farm.create(attributes) unless Farm.where(attributes).first
end

parcela_attributes = [
    { name: "parcela1", tipo: "type 1", farm_id: 1 },
    { name: "ElGrow", tipo: "type 1", farm_id: 2 },
    { name: "parcela3", tipo: "type 3", farm_id: 3 },
  ] 

parcela_attributes.each do |attributes|
    Parcela.create(attributes) unless Parcela.where(attributes).first
end

cultivo_attributes = ([
    { name: "lechuga", variedad: "iceberg", plantas: "5", observaciones: "la polla la plantasion esta manin", parcela_id: 1 },
    { name: "cannabis", variedad: "sativa", plantas: "5", observaciones: "la polla la plantasion esta manin", parcela_id: 2 },
    { name: "cannabis", variedad: "indica", plantas: "5", observaciones: "la polla la plantasion esta manin", parcela_id: 2 },
 ])
 
cultivo_attributes.each do |attributes|
    Cultivo.create(attributes) unless Cultivo.where(attributes).first
end



intervencion_attributes = ([
    { action: "lechuga", fecha: 20201025, observaciones: "la polla la plantasion esta manin", cultivo_id: 1 },
    { action: "lechuga", fecha: 20200925, observaciones: "la polla la plantasion esta manin", cultivo_id: 1 },
    { action: "lechuga", fecha: 20211025, observaciones: "la polla la plantasion esta manin", cultivo_id: 1 },
 ])
 
 intervencion_attributes.each do |attributes|
    Intervencion.create(attributes) unless Intervencion.where(attributes).first
end


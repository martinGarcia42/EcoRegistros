class ChangeDatatypeIntervencions < ActiveRecord::Migration[6.0]
  def change
    change_column :intervencions, :fecha, 'date USING CAST(fecha AS date)'
   
  end
end

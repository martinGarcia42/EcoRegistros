class RenameTypeInParcela < ActiveRecord::Migration[6.0]
  def change
    rename_column :parcelas, :type, :tipo
  end
end

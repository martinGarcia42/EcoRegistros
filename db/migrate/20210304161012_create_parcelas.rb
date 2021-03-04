class CreateParcelas < ActiveRecord::Migration[6.0]
  def change
    create_table :parcelas do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.belongs_to :farm, null: false, foreign_key: true

      t.timestamps
    end
  end
end

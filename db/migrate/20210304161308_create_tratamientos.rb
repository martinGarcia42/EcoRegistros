class CreateTratamientos < ActiveRecord::Migration[6.0]
  def change
    create_table :tratamientos do |t|
      t.string :producto, null: false
      t.string :dosis, null: false
      t.string :caldo, null: false
      t.string :observaciones, null: false
      t.date :fecha, null: false
      t.belongs_to :cultivo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

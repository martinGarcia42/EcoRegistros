class CreateCultivos < ActiveRecord::Migration[6.0]
  def change
    create_table :cultivos do |t|
      t.string :name, null: false
      t.string :cultivo, null: false
      t.string :variedad, null: false
      t.string :plantas, null: false
      t.string :observaciones, null: false
      t.belongs_to :parcela, null: false, foreign_key: true

      t.timestamps
    end
  end
end

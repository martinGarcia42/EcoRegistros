class CreateIntervencions < ActiveRecord::Migration[6.0]
  def change
    create_table :intervencions do |t|
      t.string :action, null: false
      t.string :date, null: false
      t.string :observaciones, null: false
      t.belongs_to :cultivo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

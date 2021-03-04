class CreateRecoleccions < ActiveRecord::Migration[6.0]
  def change
    create_table :recoleccions do |t|
      t.string :plantas, null: false
      t.float :kilosdextrio, null: false
      t.string :observaciones, null: false
      t.date :fecha, null: false
      t.belongs_to :cultivo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

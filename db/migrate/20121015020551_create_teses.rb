class CreateTeses < ActiveRecord::Migration
  def change
    create_table :teses do |t|
      t.string :apellido
      t.string :nombre
      t.integer :anio
      t.string :titulo
      t.string :institucion
      t.string :localizacion
      t.references :user

      t.timestamps
    end
    add_index :teses, :user_id
  end
end

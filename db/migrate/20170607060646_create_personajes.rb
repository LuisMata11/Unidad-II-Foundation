class CreatePersonajes < ActiveRecord::Migration[5.1]
  def change
    create_table :personajes do |t|
      t.text :name
      t.integer :age
      t.text :creator

      t.timestamps
    end
  end
end

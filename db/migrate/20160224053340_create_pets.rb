class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :weight
      t.integer :age
      t.text :description
      t.string :sex
      t.string :breed

      t.timestamps null: false
    end
  end
end

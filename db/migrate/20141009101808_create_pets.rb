class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.boolean :sold

      t.timestamps
    end
  end
end

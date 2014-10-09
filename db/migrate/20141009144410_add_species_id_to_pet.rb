class AddSpeciesIdToPet < ActiveRecord::Migration
  def change
    add_column :pets, :species_id, :integer
  end
end

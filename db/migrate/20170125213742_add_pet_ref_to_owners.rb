class AddPetRefToOwners < ActiveRecord::Migration[5.0]
  def change
    add_reference :owners, :pet, foreign_key: true
  end
end

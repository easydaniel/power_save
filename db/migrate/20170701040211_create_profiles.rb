class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :location
      t.string :model

      t.timestamps
    end
  end
end

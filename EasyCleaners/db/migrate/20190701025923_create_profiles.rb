class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :info
      t.string :price

      t.timestamps
    end
  end
end

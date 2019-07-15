class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :last_name,:limit => 20,:default=>'',:null=>false
      t.string :first_name,:limit => 20,:default=>'',:null=>false
      t.boolean :burnaby,:default=>false
      t.boolean :richmond,:default=>false
      t.boolean :north_vancouver,:default=>false
      t.boolean :west_vancouver,:default=>false
      t.boolean :yale_town,:default=>false
      t.boolean :gas_town,:default=>false
      
      t.float :total_ratings,:default=>0.0
      t.integer :num_ratings,:default=>0
      t.float :price,:default=>13.85

      t.timestamps
    end
  end
end

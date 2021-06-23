class CreateFarms < ActiveRecord::Migration[6.1]
  def change
    create_table :farms do |t|
      t.string :name
      t.text :bio
      t.string :address
      t.string :farmer_name

      t.timestamps
    end
  end
end

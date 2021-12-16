class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :age_group
      t.string :email
      t.string :gender
      t.string :organization
      t.string :location
      t.text :interests, array:true, default: []

      t.timestamps
    end
  end
end

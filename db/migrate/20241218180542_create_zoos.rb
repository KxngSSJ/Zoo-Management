class CreateZoos < ActiveRecord::Migration[8.0]
  def change
    create_table :zoos do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :animal

      t.timestamps
    end
  end
end

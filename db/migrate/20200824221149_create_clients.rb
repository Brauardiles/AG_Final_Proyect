class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :institution
      t.string :region
      t.string :city
      t.string :state
      t.string :adress
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end

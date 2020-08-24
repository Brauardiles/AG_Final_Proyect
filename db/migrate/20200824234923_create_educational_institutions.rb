class CreateEducationalInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :educational_institutions do |t|
      t.integer :rol_data_base
      t.string :Name
      t.string :Type
      t.boolean :Integration
      t.string :region
      t.string :city
      t.string :state
      t.string :adress
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end

class CreateClientServices < ActiveRecord::Migration[7.0]
  def change
    create_table :client_services do |t|
      t.references :client, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.float :rate
      t.integer :registered_users
      t.integer :active_users
      
      t.timestamps
    end
  end
end

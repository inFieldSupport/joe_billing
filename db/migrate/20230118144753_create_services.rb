class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.references :service_type
      t.references :client
      t.float :rate
      t.integer :active_users
      t.integer :registered_users

      t.timestamps
    end
  end
end

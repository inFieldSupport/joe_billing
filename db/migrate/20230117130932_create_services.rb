class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.float :rate
      t.integer :registered_users
      t.integer :active_users

      t.timestamps
    end
  end
end

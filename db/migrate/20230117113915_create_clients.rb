class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :owner
      t.string :address
      t.string :state
      t.integer :total_customers, :default => 0

      t.timestamps
    end
  end
end

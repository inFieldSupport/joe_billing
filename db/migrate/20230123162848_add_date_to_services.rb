class AddDateToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :month, :integer
    add_column :services, :year, :integer
  end
end

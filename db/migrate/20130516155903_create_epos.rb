class CreateEpos < ActiveRecord::Migration
  def change
    create_table :epos do |t|
      t.string :name
      t.string :number
      t.string :ip_address
      t.string :ip_port
      t.integer :branch_id

      t.timestamps
    end
  end
end

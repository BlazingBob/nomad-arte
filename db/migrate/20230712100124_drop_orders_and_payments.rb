class DropOrdersAndPayments < ActiveRecord::Migration[7.0]
  def up
    drop_table :orders
    drop_table :payments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

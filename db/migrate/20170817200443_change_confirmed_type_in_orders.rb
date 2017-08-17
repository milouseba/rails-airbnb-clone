class ChangeConfirmedTypeInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :confirmed, :string
  end
end

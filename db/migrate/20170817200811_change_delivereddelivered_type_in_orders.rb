class ChangeDelivereddeliveredTypeInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :delivered, :string
  end
end

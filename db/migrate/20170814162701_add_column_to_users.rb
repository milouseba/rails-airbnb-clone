class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :url_avatar, :string
  end
end

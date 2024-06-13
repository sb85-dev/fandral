class AddTypeToAccountNumbers < ActiveRecord::Migration[7.1]
  def change
    add_column :account_numbers, :account_type, :string
  end
end

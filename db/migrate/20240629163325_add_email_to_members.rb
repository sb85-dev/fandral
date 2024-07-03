class AddEmailToMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :email, :string
  end
end

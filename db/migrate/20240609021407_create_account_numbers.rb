class CreateAccountNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :account_numbers do |t|
      t.integer :number
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end

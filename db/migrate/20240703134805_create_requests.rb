class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
      t.string :request_type
      t.string :products_type

      t.timestamps
    end
  end
end

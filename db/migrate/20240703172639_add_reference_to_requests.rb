class AddReferenceToRequests < ActiveRecord::Migration[7.1]
  def change
    add_reference :requests, :member, null: false, foreign_key: true
  end
end

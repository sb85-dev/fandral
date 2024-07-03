class CreateRequestDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :request_documents do |t|
      t.references :request, null: false, foreign_key: true
      t.references :document, null: false, foreign_key: true
      t.boolean :required

      t.timestamps
    end
  end
end

class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.string :document_type
      t.text :document_description

      t.timestamps
    end
  end
end

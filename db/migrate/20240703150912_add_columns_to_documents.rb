class AddColumnsToDocuments < ActiveRecord::Migration[7.1]
  def change
    add_column :documents, :requirement1, :string
    add_column :documents, :requirement1_required, :boolean
    add_column :documents, :requirement2, :string
    add_column :documents, :requirement2_required, :boolean
    add_column :documents, :requirement3, :string
    add_column :documents, :requirement3_required, :boolean
    add_column :documents, :requirement4, :string
    add_column :documents, :requirement4_required, :boolean
  end
end

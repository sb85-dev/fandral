class AddFieldsToRequestTemplates < ActiveRecord::Migration[7.1]
  def change
    add_column :request_templates, :product, :string
    add_column :request_templates, :request, :string
    add_column :request_templates, :rfi_date, :integer
  end
end

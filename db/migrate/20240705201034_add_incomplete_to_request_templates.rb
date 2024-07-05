class AddIncompleteToRequestTemplates < ActiveRecord::Migration[7.1]
  def change
    add_column :request_templates, :incomplete, :string
  end
end

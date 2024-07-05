class AddColumnToRequestTemplates < ActiveRecord::Migration[7.1]
  def change
    add_column :request_templates, :call_to_action, :string
  end
end

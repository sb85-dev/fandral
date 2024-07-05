class CreateRequestTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :request_templates do |t|
        t.string :subject
        t.string :greeting
        t.string :greeting_line_two
        t.text :step_one
        t.text :step_two
        t.string :footer_header
        t.text :complete_by
        t.text :questions
        t.string :hours_of_operation
        t.string :email
        t.string :phone_numbers

      t.timestamps
    end
  end
end

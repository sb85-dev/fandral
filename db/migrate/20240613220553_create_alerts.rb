class CreateAlerts < ActiveRecord::Migration[7.1]
  def change
    create_table :alerts do |t|
      t.references :member, null: false, foreign_key: true
      t.string :assigned_to
      t.date :date_of_notice
      t.string :received_from
      t.string :type_of_review
      t.date :date_oldest_account
      t.string :decision
      t.date :monitor_until
      t.string :fca_maintain
      t.boolean :document_request
      t.date :date_documents_requested
      t.boolean :documents_received
      t.text :fdra_facts_notes
      t.text :olb_review_by_lr
      t.text :background_review_by_lr
      t.string :fraud_flags
      t.boolean :idv_docs_received
      t.float :loss
      t.float :exposure
      t.string :funds_returned_reason
      t.string :external_account

      t.timestamps
    end
  end
end

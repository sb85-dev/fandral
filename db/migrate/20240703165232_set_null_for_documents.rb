class SetNullForDocuments < ActiveRecord::Migration[7.1]
    def change
        change_table :documents, bulk: true do |t|
            t.change :requirement1_required, :boolean, null: false, default: false
            t.change :requirement2_required, :boolean, null: false, default: false
            t.change :requirement3_required, :boolean, null: false, default: false
            t.change :requirement4_required, :boolean, null: false, default: false
        end
      end
end

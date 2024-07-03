class SetDefaultForDocuments < ActiveRecord::Migration[7.1]
  def change
    change_table :documents, bulk: true do |t|
        t.change :requirement1_required, :boolean, default: false
        t.change :requirement2_required, :boolean, default: false
        t.change :requirement3_required, :boolean, default: false
        t.change :requirement4_required, :boolean, default: false
    end
  end
end

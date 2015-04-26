class AddCandidateIdToQuerySnapshot < ActiveRecord::Migration
  def change
    add_reference :query_snapshots, :candidate, index: true
    add_foreign_key :query_snapshots, :candidates
  end
end

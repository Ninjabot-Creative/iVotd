class AddCountToQuerySnapshots < ActiveRecord::Migration
  def change
    add_column :query_snapshots, :count, :integer
  end
end

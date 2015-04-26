class CreateQuerySnapshots < ActiveRecord::Migration
  def change
    create_table :query_snapshots do |t|

      t.timestamps null: false
    end
  end
end

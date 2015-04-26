class AddTitleToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :title, :string
  end
end

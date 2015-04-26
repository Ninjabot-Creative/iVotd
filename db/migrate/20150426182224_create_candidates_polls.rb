class CreateCandidatesPolls < ActiveRecord::Migration
  def change
    create_table :candidates_polls do |t|
    	t.integer :candidate_id
      t.integer :poll_id
    end
  end
end

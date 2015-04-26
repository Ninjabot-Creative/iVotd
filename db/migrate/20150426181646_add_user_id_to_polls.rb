class AddUserIdToPolls < ActiveRecord::Migration
  def change
    add_reference :polls, :user, index: true
    add_foreign_key :polls, :users
  end
end

class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Username, :string
  end
end

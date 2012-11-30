class AddLastCachedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_cached, :datetime
  end
end

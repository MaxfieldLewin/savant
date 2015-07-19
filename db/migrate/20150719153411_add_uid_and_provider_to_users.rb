class AddUidAndProviderToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :provider
      t.integer :uid
    end
  end
end

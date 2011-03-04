class AddTypeToSubscription < ActiveRecord::Migration
  def self.up
    add_column :subscriptions, :subscribable_type, :string
  end

  def self.down
    remove_column :subscriptions, :subscribable_type
  end
end

class AddTypeColumnToRequests < ActiveRecord::Migration
  def self.up
    add_column :requests, :type, :integer
  end

  def self.down
    remove_column :requests, :type
  end
end

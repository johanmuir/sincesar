class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :title
      t.string :status
      t.integer :group_id
      t.integer :user_id
      t.text :content
      t.integer :is_public
      t.string :resolution

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end

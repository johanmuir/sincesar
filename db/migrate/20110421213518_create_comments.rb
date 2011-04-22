class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :user_id
      t.integer :request_id
      t.string :content
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end

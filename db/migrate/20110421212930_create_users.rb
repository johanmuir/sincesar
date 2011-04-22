class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :first_last_name
      t.string :second_last_name
      t.date :date_of_birth
      t.integer :is_admin
      t.string :status
      t.string :church_attending
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

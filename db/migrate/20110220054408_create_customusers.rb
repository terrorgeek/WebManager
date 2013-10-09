class CreateCustomusers < ActiveRecord::Migration
  def self.up
    create_table :customusers do |t|
      t.string :username
      t.string :password
      t.integer :companies_id
      t.timestamps
    end
  end

  def self.down
    drop_table :customusers
  end
end

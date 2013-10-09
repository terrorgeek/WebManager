class CreateVisitors < ActiveRecord::Migration
  def self.up
    create_table :visitors do |t|
      t.string :username
      t.string :password
      t.integer :age
      t.string :gender
      t.integer :qq
      t.integer :cellphone
      t.timestamps
    end
  end

  def self.down
    drop_table :visitors
  end
end

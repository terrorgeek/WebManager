class CreateManagers < ActiveRecord::Migration
  def self.up
    create_table :managers do |t|
      t.string :username
      t.string :password
      t.string :realname
      t.string :managertype
      t.timestamps
    end
  end

  def self.down
    drop_table :managers
  end
end

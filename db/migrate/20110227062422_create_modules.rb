class CreateModules < ActiveRecord::Migration
  def self.up
    create_table :modules do |t|
      t.string :modulename
      t.timestamps
    end
  end

  def self.down
    drop_table :modules
  end
end

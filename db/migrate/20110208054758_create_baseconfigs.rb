class CreateBaseconfigs < ActiveRecord::Migration
  def self.up
    create_table :baseconfigs do |t|
      t.string :websitename
      t.string :websiteurl
      t.string :websitelogo
      t.string :webcopyrights
      t.integer :webphone
      t.timestamps
    end
  end

  def self.down
    drop_table :baseconfigs
  end
end

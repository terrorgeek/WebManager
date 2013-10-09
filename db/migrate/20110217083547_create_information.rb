class CreateInformation < ActiveRecord::Migration
  def self.up
    create_table :information do |t|
      t.string :title
      t.binary :infoimage
      t.text :infodetails
      t.string :infointroduction
      t.timestamps
    end
  end

  def self.down
    drop_table :information
  end
end

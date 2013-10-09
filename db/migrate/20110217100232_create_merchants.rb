class CreateMerchants < ActiveRecord::Migration
  def self.up
    create_table :merchants do |t|
      t.string :title
      t.binary :merchantimage
      t.text :merchantdetails
      t.integer :contactme
      t.timestamps
    end
  end

  def self.down
    drop_table :merchants
  end
end

class CreateBrands < ActiveRecord::Migration
  def self.up
    create_table :brands do |t|
      t.string :brandname
      t.binary :brandlogo
      t.string :brandsite
      t.text :branddetails
      t.timestamps
    end
  end

  def self.down
    drop_table :brands
  end
end

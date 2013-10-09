class CreateProvisions < ActiveRecord::Migration
  def self.up
    create_table :provisions do |t|
      t.string :provisionname
      t.string :provisiontitle
      t.string :provisiontype
      t.string :provisionstandards
      t.string :provisionbrand
      t.string :provisiondetails
      t.binary :imagedata
      t.integer :provisionprice
      t.timestamps
    end
  end

  def self.down
    drop_table :provisions
  end
end

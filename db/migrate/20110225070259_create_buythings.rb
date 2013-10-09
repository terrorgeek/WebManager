class CreateBuythings < ActiveRecord::Migration
  def self.up
    create_table :buythings do |t|
      t.string :buytitle
      t.string :buyname
      t.text :buydetails
      t.string :status
      t.integer :customusers_id
      t.integer :visitors_id   
      t.timestamps
    end
  end

  def self.down
    drop_table :buythings
  end
end

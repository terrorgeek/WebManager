class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.string :showtitle
      t.string :showcity
      t.date :datefrom
      t.date :dateto
      t.string :mansionname
      t.text :showdetails
      t.string :contactus
      t.binary :showimage
      t.string :status
      t.integer :company_id
      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end

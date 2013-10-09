class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :companyname
      t.string :city
      t.string :logindate
      t.text :companydetails
      t.integer :stock
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end

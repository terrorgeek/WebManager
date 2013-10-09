class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :jobtitle
      t.string :jobduty
      t.integer :amount
      t.string :jobcity
      t.string :degree
      t.string :contactus
      t.text :jobdetails
      t.integer :company_id
      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end

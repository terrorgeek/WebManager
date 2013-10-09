class CreateOffstagelogs < ActiveRecord::Migration
  def self.up
    create_table :offstagelogs do |t|
      t.string :title
      t.string :body
      t.timestamps
    end
  end

  def self.down
    drop_table :offstagelogs
  end
end

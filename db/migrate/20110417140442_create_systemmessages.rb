class CreateSystemmessages < ActiveRecord::Migration
  def self.up
    create_table :systemmessages do |t|
      t.string :username
      t.text :body
      t.string :flag
      t.timestamps
    end
  end

  def self.down
    drop_table :systemmessages
  end
end

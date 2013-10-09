class AddStatusColumn < ActiveRecord::Migration
  def self.up
    add_column "jobs","status",:string
  end

  def self.down
  end
end

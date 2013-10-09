class AddStatusToModule < ActiveRecord::Migration
  def self.up
    add_column "modules","status",:string
  end

  def self.down
  end
end

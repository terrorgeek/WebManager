class AddAddressColumn < ActiveRecord::Migration
  def self.up
    add_column "shows","address",:string
  end

  def self.down
  end
end

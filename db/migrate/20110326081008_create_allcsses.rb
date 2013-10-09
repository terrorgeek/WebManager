class CreateAllcsses < ActiveRecord::Migration
  def self.up
    create_table :allcsses do |t|
      t.string :margin_left
      t.string :margin_top
      t.string :draggable
      t.string :max_row
      t.string :picture
      t.string :max_comment
      t.string :footer
      t.string :advertise_number
      t.timestamps
    end
  end

  def self.down
    drop_table :allcsses
  end
end

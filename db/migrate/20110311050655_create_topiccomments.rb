class CreateTopiccomments < ActiveRecord::Migration
  def self.up
    create_table :topiccomments do |t|
      t.text :body
      t.integer :visitor_id
      t.integer :customuser_id
      t.integer :topic_id
      t.timestamps
    end
  end

  def self.down
    drop_table :topiccomments
  end
end

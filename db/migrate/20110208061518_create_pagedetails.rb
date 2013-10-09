class CreatePagedetails < ActiveRecord::Migration
  def self.up
    create_table :pagedetails do |t|
      t.integer :current_number
      t.integer :reqpro_number
      t.integer :product_number
      t.integer :boarddisplay_number
      t.integer :exhibition_number
      t.integer :pictrue_number
      t.integer :video_number
      t.integer :query_number
      t.integer :topic_number
      t.integer :firm_number
      t.integer :firm_news__number
      t.integer :current_price_number
      t.integer :merchants_deputy
      t.integer :jobhunter_number
      t.integer :info_number
      t.integer :download_number
      t.integer :image_link_number
      t.integer :word_link_number
      t.timestamps
    end
  end

  def self.down
    drop_table :pagedetails
  end
end

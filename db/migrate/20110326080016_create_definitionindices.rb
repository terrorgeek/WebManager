class CreateDefinitionindices < ActiveRecord::Migration
  def self.up
    create_table :definitionindices do |t|
      t.string :provision
      t.string :buy
      t.string :brand
      t.string :show
      t.string :job
      t.string :merchant
      t.string :provision_drag
      t.string :buy_drag
      t.string :brand_drag
      t.string :show_drag
      t.string :job_drag
      t.string :merchant_drag
      t.timestamps
    end
  end

  def self.down
    drop_table :definitionindices
  end
end

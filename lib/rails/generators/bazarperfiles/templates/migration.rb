class CreateBazarperfilesTables < ActiveRecord::Migration
  def self.up
    SCHEMA_AUTO_INSERTED_HERE
  end

  def self.down
    drop_table :perfiles
    
  end
end

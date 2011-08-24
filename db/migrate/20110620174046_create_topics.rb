class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :topic
      t.text :checkhelp

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end

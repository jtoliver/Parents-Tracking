class CreateContactsTopics < ActiveRecord::Migration
  def self.up
    create_table :contacts_topics, :id => false do |t|
      t.integer :contact_id, :null => false
      t.integer :topic_id, :null => false

  end
  end

  def self.down
    drop_table :contacts_topics
  end
end

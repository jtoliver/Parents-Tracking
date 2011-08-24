class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.datetime :date
      t.string :staff
      t.string :parentcom
      t.string :parentcomother
      t.string :topic
      t.string :topic_other
      t.string :email
      t.text :comments
      t.string :feedback

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end

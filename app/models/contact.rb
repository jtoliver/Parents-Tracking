class Contact < ActiveRecord::Base
    has_and_belongs_to_many :topics
    
    validates_presence_of :date, :on => :create, :message => "(A date is required.)"
    validates_presence_of :staff, :on => :create, :message => "(A staff memeber is required.)"
    validates_presence_of :parentcom, :on => :create, :message => "(Please select a type of parent communication.)"
    #validates_presence_of :topic, :on => :create, :message => "(Please select a topic.)"
    

end

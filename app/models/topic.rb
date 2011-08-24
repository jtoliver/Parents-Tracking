class Topic < ActiveRecord::Base
    validates_presence_of :topic, :on => :create, :message => "can't be blank"
end

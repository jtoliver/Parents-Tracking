class User < ActiveRecord::Base
  acts_as_authentic
  
  validates_presence_of :first_name, :on => :create, :message => "..You have a first name don't you?"
  validates_presence_of :last_name, :on => :create, :message => "..You have a last name don't you?"
  validates_presence_of :username, :on => :create, :message => "can't be blank"
end

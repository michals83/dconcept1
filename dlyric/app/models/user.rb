class User < ActiveRecord::Base
  attr_accessor :id, :name, :email

  #Need to decide on whether to use foreign key or junction table 
  has_many :verses
end

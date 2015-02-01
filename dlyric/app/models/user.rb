class User < ActiveRecord::Base

  #Need to decide on whether to use foreign key or junction table 
  has_many :verses
end

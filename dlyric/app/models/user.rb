class User < ActiveRecord::Base

  # Need to decide on whether to use foreign key or junction table
  # additional features - links (soundcloud, fb, bandcamp, etc.)
  # history

  has_many :verses
end

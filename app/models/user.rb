class User < ActiveRecord::Base
  attr_accessible :last_cached, :twitter

  validates :twitter, :presence => true
  validates :twitter, :uniqueness => true
end

class User < ActiveRecord::Base
  acts_as_dailycred

  has_many :ideas
end

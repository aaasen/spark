class Idea < ActiveRecord::Base
  belongs_to :user

  attr_accessible :name, :content, :user
end

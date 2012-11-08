class Idea < ActiveRecord::Base
  acts_as_taggable

  belongs_to :user

  attr_accessible :name, :content, :user, :tag_list
end

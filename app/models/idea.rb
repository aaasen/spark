class Idea < ActiveRecord::Base
  acts_as_taggable

  belongs_to :user

  attr_accessible :name, :content, :user, :tag_list

  validates :name, :presence => true,
    :length => { :maximum => 64 }
  validates :content, :allow_blank => true,
    :length => { :maximum => 512 }
end

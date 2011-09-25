class Recipe < ActiveRecord::Base
  attr_accessible :name, :author, :ingredients, :directions

  #1 to many
  has_many :comments, :dependent => destroy
end

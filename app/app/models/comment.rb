class Comment < ActiveRecord::Base
  # Foreign Key
  belongs_to :recipe
end

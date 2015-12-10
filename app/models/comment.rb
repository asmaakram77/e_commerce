class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :comment

  belongs_to :product
end

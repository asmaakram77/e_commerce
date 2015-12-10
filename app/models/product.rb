class Product < ActiveRecord::Base
  attr_accessible :age, :description, :name
  has_many :comments
end

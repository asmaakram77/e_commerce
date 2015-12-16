class Product < ActiveRecord::Base
  attr_accessible :age, :description, :name, :comments, :attachments_attributes

  has_many :comments, as: :commentable
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments


end

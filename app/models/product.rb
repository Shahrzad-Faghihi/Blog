class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price
  has_attached_file :photo
end

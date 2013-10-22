class Product < ActiveRecord::Base
  attr_accessible :name, :price
  validates_presence_of :name,:price
  validates :price, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality =>{:greater_than => 0}
end

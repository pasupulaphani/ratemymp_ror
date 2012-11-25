class Mp1 < ActiveRecord::Base
  attr_accessible :rating1, :rating2, :rating3, :rating4, :twfy_mpid, :pcs_attributes
  
  has_many :pcs, :dependent => :destroy
  accepts_nested_attributes_for :pcs
end

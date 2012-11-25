class Pc < ActiveRecord::Base
  attr_accessible :mp_id, :postcode, :rating1, :rating2, :rating3, :rating4
  
  belongs_to :mp
  belongs_to :mp1
end

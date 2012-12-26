class Decoration < ActiveRecord::Base
	attr_accessible :name, :year, :zone_id 
	validates :name,  :presence => true
	validates :year,  :presence => true
	attr_accessible :expense
  has_attached_file :expense
has_many:tasks

end

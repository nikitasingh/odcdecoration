class Decoration < ActiveRecord::Base
	attr_accessible :name, :year, :zone_id 
	validates :name,  :presence => true
	validates :year, :length => { :is => 4 },:numericality => { :only_integer => true }, :presence => true
	attr_accessible :expense
  has_attached_file :expense, :default_url => "assets/images/rails.png"
has_many:tasks

end

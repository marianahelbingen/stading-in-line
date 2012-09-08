class CheckIn < ActiveRecord::Base
	validates_numericality_of :occupation, :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100
	validates_numericality_of :waiting_time, :only_integer => true, :greater_than_or_equal_to => 0
	belongs_to :places
end

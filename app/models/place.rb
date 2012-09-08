class Place < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name, case_sensitive: false
	has_many :check_ins
end

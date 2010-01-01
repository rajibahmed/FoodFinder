require 'rubygems'  
require 'active_record'  

dbconfig = YAML::load(File.open('database.yml'))

ActiveRecord::Base.establish_connection(dbconfig) 

class Tours < ActiveRecord::Base  
end 
Tours.find(:all).each{|tour| p tour.name}

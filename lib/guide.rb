require "resturant"

class Guide


	class Config
		@@actions=['list','add','find','show','quit']
		def self.actions;	@@actions	end
	end


	
	def initialize(path=nil)
		Resturant.filepath= path
		if Resturant.file_exists?
			p "the file exists"
		elsif Resturant.create_file
			p " File created"
		else 	
			p "---------- Program Exiting ---------"
			exit!
		end
	end


	def launch!
		introduction
		result=nil
		until result==:quit
			action = get_action
			result = do_action(action)
		end
		
		conclusion
	end
	
	
	
	def get_action	
		action = nil
		until Guide::Config.actions.include?(action)
			puts "Valid actions are #{Guide::Config.actions.join(', ')}" if action
			print	"> "
			user_response = gets.chomp	
			action = user_response.downcase.strip			
		end	
		return action
	end	
	
	
	
	def do_action(action)
		case action
			when 'list'
				p "listing ..."
			when 'find'
				p "finding ..."
			when 'add'
				resturant= Resturant.new
        resturant.name = "Bablus Shop"
        resturrant.addres
				#resturant.methods.each{|m| p m }

			when 'quit'
				return :quit
			else
				print "\n I dont understant that command \n"
		end
	end
	
	
	def introduction
		puts "<+++ this is our ruby app start point ++++>"
	end

	def conclusion
		puts "<+++ this is our ruby app ending point ++++>"
	end
end
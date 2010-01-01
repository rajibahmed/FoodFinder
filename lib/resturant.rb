class Resturant
	@@filepath=nil
	
	attr_accessor :name , :address
	
	def	self.filepath=(path=nil)	
		@@filepath=File.join(path)
	end
	
	def self.file_exists?
		if @@filepath && File.exists?(@@filepath)
			return true
		else		
			return false
		end
	end
	
	def self.file_useable?
		return false unless  @@filepath
		return false unless File.exists?(@@filepath)
		return false unless File.readable?(@@filepath)
		return false unless File.writable?(@@filepath)
		return true
	end
	
	
	def self.create_file
		File.open(@@filepath,'w') unless file_exists?		
		return file_useable?
	end
	
	def self.save_file
		
	end
end
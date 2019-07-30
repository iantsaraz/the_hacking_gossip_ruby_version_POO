require 'csv'

class Gossip
	attr_reader :author , :content
	

	def initialize (author , content) 
		@content = content
		@author = author
	end	

	def save
	#@@all_gossip = []
	#@@all_gossip << self

	#data = @@all_gossip.map { |gossip| gossip.join(",") }.join ("\n")	
		CSV.open("db/gossip.csv", "a+") do |csv|
   	 	csv << [ @author, @content]
		
		end
	end

	def self.all
		all_gossip = []
		@potins = CSV.read("db/gossip.csv")
		@potins.length.times do |i|
			@potins[i].length-1.times do |j|
				goss = Gossip.new(@potins[i][j],@potins[i][j+1])

				all_gossip << goss

				end
			end
		return all_gossip,@potins
	end
	
	def self.delete(index_of_potin)
		potins_delete = Gossip.delete(index_of_potin-1)	
		CSV.open("db/gossip.csv", "a+") do |csv|		
			Gossip.length.times do |i|
				csv << Gossip[i]
			end
		end
		return potins_delete
end			

end	
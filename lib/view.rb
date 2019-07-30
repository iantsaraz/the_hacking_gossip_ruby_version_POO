
require_relative 'gossip'
class View	
	attr_reader :author , :content

	def create_gossip
		puts "entrez votre nom" 
		author = gets.chomp
		puts "entrez votre potin"
		content = gets.chomp

		return params = { content: content,author: author }
	end	

	def index_gossips(gossips)
		i=1
		gossips.each do |value|
			puts " #{i+1}--#{value.author} => #{value.content}"
			puts "  "
			i+=1
		end
	end

	def potins_delete(potins)
		puts "#{potins[0]} => #{potins[1]}"
		puts "Ce potins a été bien supprimé"
end
end	
require_relative 'controller'

class Router

	def initialize
		@controller = Controller.new
	end

	def perform
		puts "BIENVENUE DANS THE GOSSIP PROJECT"

		while true

			puts "Tu veux faire quoi jeune mouss' ?"
      		puts "1. Je veux créer un gossip"
      		puts "2. afficher tous les points"
      		puts "3. suprimer des points"
     		puts "4. Je veux quitter l'app"
      		params = gets.chomp.to_i

      		case params
      			when 1
      				puts "tu as choisis de créer un gossip"
      				@controller.create_gossip

      			when 2 
      				@controller.index_gossips	

      			when 3
      				n = @controller.index_gossips
      				while true
      				puts"quel potin veux tu suprimer?"
      				choix = gets.chomp.to_i 
      					case choix	
      				
      						when 0
      							puts" ce potin n'existe pas"
      							break
      						when 1..n	
      							@controller.delete(choix)
      							puts "le potin a été suprimé"
      							break
      						
      					end	
      				end		

      			when 4 

      				puts"tu as choisis de quitter l'app..À bientôt !"
      				break 
      		
      			else
      				puts "choix incorrect, merci de ressayer"
      		
      			
      		end	
      	end
     end 					
end
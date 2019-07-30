require_relative 'gossip'
require_relative 'view'

class Controller

	def initialize
	@view = View.new
    end
	
	def create_gossip
		params = @view.create_gossip
		my_gossip = Gossip.new(params[:author],params[:content])
		my_gossip.save 
		
	end

	def index_gossips
		potins,ligne = Gossip.all
		@view.index_gossips(potins)
		return ligne.length
	end

	def delete(index_of_potin)
		del_potins = Gossip.delete(index_of_potin)
		@view.potins_delete(del_potins)	
	end	
end		


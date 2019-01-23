require_relative "gossip"
require_relative "view"

# The class of Controller
class Controller
  def initialize
  	@view = View.new
  end
  def create_gossip
  	params = @view.create_gossip #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
    params.save
  end
end
ray  = Controller.new.create_gossip
puts ray

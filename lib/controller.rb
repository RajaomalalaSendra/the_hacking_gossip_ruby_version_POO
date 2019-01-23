require_relative "gossip"
require_relative "view"

# The class of Controller
class Controller
  attr_accessor :author, :content
  def initialize
  	@view = View.new
  end
  def create_gossip
  	params = @view.create_gossip #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
    save_param = Gossip.new(params[:author],params[:content]).save
  end
end
app = Controller.new.create_gossip
app
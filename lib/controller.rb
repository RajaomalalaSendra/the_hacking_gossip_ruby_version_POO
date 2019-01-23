require_relative "gossip"
require_relative "view"
require "csv"
# The class of Controller
class Controller
  attr_accessor :author, :content
  attr_reader :my_csv
  def initialize
  	@view = View.new
  end
  def create_gossip
  	params = @view.create_gossip #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
    save_param = Gossip.new(params[:author],params[:content]).save
  end
  def index_gossips
  	@view.index_gossips
  end
  def destroy
  	  params = @view.destroy.to_i #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
      delete_param = Gossip.new("#{params}", "a").destroy
  end
end
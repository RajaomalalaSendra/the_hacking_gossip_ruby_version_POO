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
  	@my_csv = CSV.read("/home/malala/Documents/THP/the_hacking_gossip_ruby_version_POO/db/gossip.csv")
  	puts @my_csv.inspect
  end
end
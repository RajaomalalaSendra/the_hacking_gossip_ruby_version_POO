require_relative "gossip"
class View
  attr_accessor :author_view, :content_view, :destroy_content, :destroy_author
  def create_gossip
  	puts "Autheur: "
  	print "> "
  	@author_view = gets.chomp()
  	puts "Content: "
  	print "> "
  	@content_view = gets.chomp()
  	return params = { content: @content_view, author: @author_view }
  end
  def index_gossips
  	 Gossip.all
  end
  def destroy
  	puts "Auteur: "
  	print "> "
  	@destroy_author = gets.chomp()
  	puts "Content: "
  	print "> "
  	@destroy_content = gets.chomp()
  	return params = { destroy_content: @destroy_content, destroy_author: @destroy_author }
  end
end

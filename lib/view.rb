require_relative "gossip"
class View
  attr_accessor :author_view, :content_view
  def create_gossip
  	puts "Autheur: "
  	@author_view = gets.chomp()
  	puts "Content: "
  	@content_view = gets.chomp()
  	return params = { content: @content_view, author: @author_view }
  end
end
require "csv"
class Gossip
	attr_accessor :author, :content, :myhash

	def initialize(author, content)
		@author = author
		@content = content
	end
	def save
		@myhash = Hash.new
		@myhash[@author] = @content
		CSV.open("/home/malala/Documents/THP/the_hacking_gossip_ruby_version_POO/db/gossip.csv", "wb") do |csv| 
			@myhash.to_a.each {|elem| csv << elem}
		end
	end
end
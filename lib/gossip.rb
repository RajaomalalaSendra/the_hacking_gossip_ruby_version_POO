require "csv"
require "pp"

class Gossip
	attr_accessor :author, :content, :myhash, :all_gossips, :myhash_to_delete

	def initialize(author, content)
		@author = author
		@content = content
	end
	def save
		@myhash = Hash.new
		@myhash[@author] = @content
		CSV.open("/home/malala/Documents/THP/the_hacking_gossip_ruby_version_POO/db/gossip.csv", "a") do |csv| 
			@myhash.to_a.each {|elem| csv << elem}
		end
	end
	def destroy
		table = CSV.open("/home/malala/Documents/THP/the_hacking_gossip_ruby_version_POO/db/gossip.csv", "a+")
		@myhash_to_delete = Hash.new
		@@a = Array.new
		@myhash_to_delete[@author] = @content
		puts @myhash_to_delete.to_a
		table.each do |row|
			@@a << row
			puts @@a.length
  		end
  		for i in 0..a.length do 
  			if @@a[i] == @myhash_to_delete.to_a
  				puts @@a[i]
  		    end
  		end		
	end
	def self.all
      @my_csv = CSV.read("/home/malala/Documents/THP/the_hacking_gossip_ruby_version_POO/db/gossip.csv")
  	  puts @my_csv.inspect
	end
end
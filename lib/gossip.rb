require "csv"
require "pp"

class Gossip
	attr_accessor :author, :content, :myhash, :all_gossips, :array_to_delete

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
		@array_to_delete = Array.new
		@@a = Array.new
		@array_to_delete = [@author, @content]
		table.each do |row|
			@@a << row
  		end
  		length = @@a.length
  		for i in 0..length do 
  			if @@a[i] == @array_to_delete
  				@@a.delete(@@a[i])
  				CSV.open("/home/malala/Documents/THP/the_hacking_gossip_ruby_version_POO/db/gossip.csv", "w") do |csv| 
			    @@a.each {|elem| csv << elem}
		      end
  		    end
  		end		
	end
	def self.all
      @my_csv = CSV.read("/home/malala/Documents/THP/the_hacking_gossip_ruby_version_POO/db/gossip.csv")
  	  puts @my_csv.inspect
	end
end
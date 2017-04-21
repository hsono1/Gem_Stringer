require "stringer/version"

module Stringer
  def self.spacify *strings
  	string = ""
  	strings.each_with_index do |s, idx|
  		if idx === 0
  			string = string + s
  		else
  			string += " " + s
  		end
  	end
  	string
  end

  def self.minify string, max 
  	if string.length > max 
  		string = string[0...max] + "..."
  	end
  	string
  end

  def self.replacify string, word_to_be_replaced, replacement
  	string.gsub!(word_to_be_replaced, replacement)
  end

  def self.tokenize string
  	string.split(" ")
  end

  def self.removify string, word_to_be_removed
  	container = string.split(" ").select{ |word| word != word_to_be_removed } 
  	container.join(" ")
  end

end

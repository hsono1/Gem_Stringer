# Stringer

## Installation

You can use this gem locally in your projects. In the Gemfile file add: 

gem "stringer", :git => "git://github.com/hsono1/Gem_stringer.git"

## Usage

Stringer provides five methods to work with strings. Spacify, Minify, Replacify, Tokenize, and Removify. 


  "Spacify": 
  	Parameters = string
  		Stringer.spacify "Hans", "Sono", "Jimenez","Rosales", "Montes", "Lemus") ----> "Hans Sono Jimenez Rosales Montes Lemus"

  
  "Minify":
  	Parameters = string , max_length_of_characters_to_be_allowed
 		Stringer.minify "My name is Hans Sono", 30   ---->   "My name is Hans Sono"
    	Stringer.minify "My name is Hans Sono", 5     ---->  "My na..."

  "Replacify":
  	Parameters = string , word_to_be_replaced, replacement
  		Stringer.replacify "Hans, Hans, Sono, Hans, Jimenez", "Hans", "Sono" ----> "Sono, Sono, Sono, Sono, Jimenez"


  "Tokenize":
  	Parameters = string 
  		Stringer.tokenize "I read two hours a day" ----> ["I", "read", "two", "hours", "a", "day"]



  "Removify":
  	Parameters = string , word_to_be_removed
  		Stringer.removify "I don't like coding", "don't"  ---->   "I like coding"



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hsono1/Gem_stringer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


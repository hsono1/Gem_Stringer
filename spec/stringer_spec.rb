require "spec_helper"

RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  describe "Spacify" do
  	it "concatenates undefined number of strings with a space" do
  		expect(Stringer.spacify "Hans", "Sono", "Jimenez","Rosales", "Montes", "Lemus").to eq("Hans Sono Jimenez Rosales Montes Lemus")
  	end
  end
  
  describe "Minify" do
  	context "max is greater that the string length" do
  		it "shortens a string depending on the max character and adds ... at the end" do
  			expect(Stringer.minify "My name is Hans Sono", 30).to eq("My name is Hans Sono")
  		end
  	end
  	context "max is lower than the string length" do
  		it "returns the same string" do
  			expect(Stringer.minify "My name is Hans Sono", 5).to eq("My na...")
  		end
  	end
  end

  describe "Replacify" do
  	it "replaces all word parameter in a string with the replacement parameter" do
  		expect(Stringer.replacify "Hans, Hans, Sono, Hans, Jimenez", "Hans", "Sono" ).to eq("Sono, Sono, Sono, Sono, Jimenez")
  	end
  end

  describe "Tokenize" do
  	it "returns an array containing all words in a parameter string" do
  		expect(Stringer.tokenize "I study twelve hours a day" ).to eq(["I", "study", "twelve", "hours", "a", "day"])
  	end
  end


  describe "Removify" do
  	it "removes all occurrences of the parameter word in the string and returns the modified string" do
  		expect(Stringer.removify "I don't like coding", "don't").to eq("I like coding")
  	end
  end


end

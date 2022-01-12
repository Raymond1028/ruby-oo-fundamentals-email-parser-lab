# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    #binding.pry
    #@email_addresses.split(", ")
    #@email_addresses.split(/, | /).uniq # .split(", " )
    @email_addresses.split(",").map do |e|
      e.split(" ")
    end.flatten.uniq
    #@email_addresses.split(", ").uniq
    #@email_addresses.split(" ")

  end
end

# parser = EmailAddressParser.new(@email_addresses)
# parser.parse

require "pry"

class EmailAddressParser
  def initialize(string)
    @string = string
  end

  def parse
    array = @string.split(/[, ]/)
    array.each do |email|
      if email == ""
        array.delete(email)
      end
    end
    # binding.pry
    array.uniq!
    return array
  end
end
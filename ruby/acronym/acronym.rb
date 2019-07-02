class Acronym
  def self.abbreviate(str)

    return str.scan(/\b\w/).join.upcase
  end
end
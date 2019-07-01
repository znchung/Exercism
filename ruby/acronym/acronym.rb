class Acronym
    def self.abbreviate(str)
        strArray = str.split

        return strArray.map { |i| 
            i.scan(/\b\w/)
        }.join("").upcase
    end
end
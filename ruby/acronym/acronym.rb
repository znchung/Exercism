class Acronym
    def self.abbreviate(str)
        strArray = str.split

        return strArray.map { |i| 
            i.split("-").map { |j| j[0] }
        }.join("").upcase
    end
end
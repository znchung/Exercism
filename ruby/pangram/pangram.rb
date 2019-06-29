class Pangram
    def self.pangram?(input)
        if (input == '')
            return false
        end

        lowercased = input.downcase
        return ('a'..'z').all? { |c| lowercased.include?(c) }
    end
end
class Complement
    DNA_MAP = { 'G'=> 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

    def self.of_dna(s)
        return s.chars.map { |c| DNA_MAP[c] }.join
    end
end
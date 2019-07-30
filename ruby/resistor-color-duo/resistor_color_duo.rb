class ResistorColorDuo
    @colorArray = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
    
    def self.value(colors)
        colors.map { |colour| @colorArray.index(colour) }.join.to_i
    end
end
class HighScores
    attr_accessor :scores

    def initialize(scores)
        @scores = scores
    end

    def latest
        scores.last
    end

    def personal_best
        scores.max
    end

    def personal_top_three
        scores.sort { |a, b| b <=> a }.max(3)
    end
end
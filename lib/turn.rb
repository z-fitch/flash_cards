
class Turn
attr_reader :guess, :card

    def initialize(guess, card)
        @guess = guess
        @card = card       
    end




def guess
    p @guess
end


def correct?
    @guess == card.answer
end

def feedback
    if correct? == true
        p "Correct!"
    else
        p "Incorrect!"
    end
end

end
# rspec spec/turn_spec.rb


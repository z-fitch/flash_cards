require './lib/card'
require './lib/turn'

# require RSpec

RSpec.describe Turn do
    it 'exists' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        
        expect(turn).to be_instance_of(Turn)
    end
    it 'has a guess' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        expect(turn.guess).to eq("Juneau")
    end
    
    it 'is correct' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        expect(turn.guess).to eq("Juneau")
        expect(turn.correct?).to eq(true)

    end
    
    it 'has feedback' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        expect(turn.guess).to eq("Juneau")
        expect(turn.correct?).to eq(true)
        expect(turn.feedback).to eq("Correct!") 
    end

    it 'exists' do
        card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        turn = Turn.new("Saturn", card)

        
        expect(turn).to be_instance_of(Turn)
    end
    it 'has a guess' do
        card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        turn = Turn.new("Saturn", card)

        expect(turn.guess).to eq("Saturn")
    end
    
    it 'is correct' do
        card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        turn = Turn.new("Saturn", card)

        expect(turn.guess).to eq("Saturn")
        expect(turn.correct?).to eq(false)

    end
    
    it 'has feedback' do
        card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        turn = Turn.new("Saturn", card)

        expect(turn.guess).to eq("Saturn")
        expect(turn.correct?).to eq(false)
        expect(turn.feedback).to eq("Incorrect!") 
    end


end
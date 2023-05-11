

class Deck
attr_reader :cards
    def initialize(cards)
        @cards = cards
        
    end







    def cards_in_category(category)
    # p  @card.select {|card, category| card.select(category)}

    cards.select {|card| card.category == category}


    end

    def count
    p cards.length
    end

end

# rspec spec/deck_spec.rb
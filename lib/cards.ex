defmodule Cards do
  
  def create_deck do
    suits = ["Spades", "Hearts", "Diamonds", "Clubs"];
    faces = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"];
    # cards =  for suit <- suits do
    #   for value <- faces do
    #     "#{value} of #{suit}"
    #   end
    # end
    # List.flatten(cards)

    for suit <- suits, values <-faces do
      "#{values} of #{suit}"
    end




  end


  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck,card) do
    Enum.member?(deck, card)
  end


  def deal(deck,hand_size) do
    Enum.split(deck,hand_size)
  end


end

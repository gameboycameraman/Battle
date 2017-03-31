require 'game'

describe Game do
subject(:game) {described_class.new("JJ", "Naz")}
let(:player2) {double(:player2)}
let(:player1) {double(:player1)}

  describe "#attack" do
    it "damages the player" do
      expect(player2).to receive(:receive_damage) #
      game.attack(player2) # When player2 gets attacked, except receive damage.
    end
  end

end

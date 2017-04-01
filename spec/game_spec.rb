require 'game'

describe Game do
subject(:game) {described_class.new("JJ", "Naz")}
let(:player2) {double(:player2)}
let(:player1) {double(:player1)}
let(:player3) {double(:player3, :hp => 0)}

  describe "#attack" do
    it "damages the player" do
      expect(player2).to receive(:receive_damage) #
      game.attack(player2) # When player2 gets attacked, except receive damage.
    end
  end

  describe "#reversing" do
    it "changes turn of players" do
      game.reverse
      expect(game.offender).to eq "Naz"
    end
  end

  describe "#gameover" do
    it "ends game if a player has 0HP" do
      subject.new(player1, player3)
      expect(subject.gameover).to be_truthy

    end
  end

end

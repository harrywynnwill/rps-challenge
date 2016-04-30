require 'game'
  describe Game do
    subject(:game) {described_class.new(player)}
    let(:player) {double :player}
      it 'starts with a player' do
        expect(game.player).to eq player
      end
  end
require 'rails_helper'

RSpec.describe Game, type: :model do

  context 'when valid game and frame' do
    let(:game){FactoryGirl.create(:game, :with_frames)}
    it "has a valid game record" do
      expect(game).to be_valid
    end
    it "has a valid frames record" do
      expect(game.frames.first).to be_valid
    end
  end

  context 'when valid game and invalid frame' do
    let(:game){FactoryGirl.create(:game)}
    it "has a valid game record" do
      expect(game).to be_valid
    end
    it "has a invalid frames record" do
      expect(game.frames.first).to be_nil
    end
  end
end

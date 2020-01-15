require 'rails_helper'

RSpec.describe GameState, type: :model do
  let(:game){FactoryGirl.create(:game)}
  let(:game_state){GameState.new(game)}

  context 'add a new frame with given pins' do

    it "should save and return true" do
      expect(game_state.new_ball(4)).to be_truthy
    end
  end

  context 'add a new frame with invalid pins' do

    it "should not save and return false" do
      expect(game_state.new_ball(-1)).to be_falsey
    end

    it "should not save and return false" do
      expect(game_state.new_ball(11)).to be_falsey
    end
  end
  context 'when next_frame is false' do

    it "should not save and return false" do
      allow(game_state).to receive(:next_frame).and_return(false)
      expect(game_state.new_ball(11)).to be_falsey
    end
  end
end

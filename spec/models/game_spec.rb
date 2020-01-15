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

  describe '#new_ball' do
    let(:game){FactoryGirl.create(:game)}

    context 'add a new_ball with given pins' do

      it "should save and return true" do
        expect(game.new_ball(4)).to be_truthy
      end
    end

    context 'add a new_ball with invalid pins' do

      it "should not save and return false" do
        expect(game.new_ball(-1)).to eq ["Pins must be greater than or equal to 0"]
      end

      it "should not save and return false" do
        expect(game.new_ball(11)).to eq ["Pins must be less than or equal to 10"]
      end
    end

    context 'add a new_ball with given pins with frames' do
      let(:game){FactoryGirl.create(:game, :with_frames)}

      it "should save and return true" do
        expect(game.new_ball(4)).to be_truthy
      end
    end

    context 'add a new_ball with given pins with equal to 10 frames' do
      let(:game){FactoryGirl.create(:game, :with_equal_to_10_frames)}

      it "should save and return true" do
        allow_any_instance_of(Frame).to receive(:incomplete?).and_return(false)
        expect(game.new_ball(4)).to eq ['Game is completed']
      end
    end
  end

  describe '#total_score' do

    context "with valid args" do
      let(:game){FactoryGirl.create(:game)}

      it "should return valid" do
        expect(game.total_score).to be_nil
      end
    end

    context "when strike? true" do
      let(:game){FactoryGirl.create(:game, :with_frames)}

      it "should return valid" do
        allow_any_instance_of(Frame).to receive(:strike?).and_return(true)
        expect(game.total_score).to be_nil
      end
    end

    context "when spare? true" do
      let(:game){FactoryGirl.create(:game, :with_frames_and_balls)}

      it "should return valid" do
        allow_any_instance_of(Frame).to receive(:spare?).and_return(true)
        expect(game.total_score).to be_truthy
      end
    end
  end
end

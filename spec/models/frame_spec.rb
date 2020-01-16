require 'rails_helper'

RSpec.describe Frame, type: :model do
  let(:frame){FactoryGirl.create(:frame)}

  it "has a valid frame record" do
    expect(frame).to be_valid
  end

  it "has a valid game record" do
    expect(frame.game).to be_valid
  end

  describe '#complete?' do
    let(:frame){FactoryGirl.create(:frame)}

    context 'when frames equal to 10' do
      it "has a valid game record" do
        allow_any_instance_of(Frame).to receive(:last?).and_return(true)
        expect(frame.complete?).to be_falsey
      end
    end
  end

end

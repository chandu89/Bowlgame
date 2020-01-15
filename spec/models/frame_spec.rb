require 'rails_helper'

RSpec.describe Frame, type: :model do
  let(:frame){FactoryGirl.create(:frame)}

  it "has a valid frame record" do
    expect(frame).to be_valid
  end

  it "has a valid game record" do
    expect(frame.game).to be_valid
  end

end

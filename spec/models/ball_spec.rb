require 'rails_helper'

RSpec.describe Ball, type: :model do

  context 'when valid attributes' do
    let(:ball){FactoryGirl.create(:ball, pins: 7)}

    it "has a valid ball record" do
      expect(ball).to be_valid
    end

    it "has a valid ball record" do
      expect(ball.frame).to be_valid
    end

    it "has a valid pins" do
      expect(ball.pins).to eq(7)
    end
  end

  context 'when invalid pins' do
    let(:ball) {FactoryGirl.create(:ball, :with_invalid_attributes)}

    it "should failed to validate" do
      expect{ball}.to raise_error(ActiveRecord::RecordInvalid, 'Validation failed: Pins must be greater than or equal to 0')
    end
  end

end

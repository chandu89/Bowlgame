require 'rails_helper'
RSpec.describe Game, type: :model do
  let(:game){FactoryGirl.create(:game)}
  
  it "has a valid game record" do
    expect(game).to be_valid
  end
end

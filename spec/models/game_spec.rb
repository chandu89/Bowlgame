require 'rails_helper'
require 'pry'
RSpec.describe Game, type: :model do
  let(:game){FactoryGirl.create(:game)}
  it "has a valid game record" do
    expect(game).to be_valid
  end
end

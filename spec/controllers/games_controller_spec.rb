require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  describe '#create' do

    context 'when accessing create via POST' do
      before { post :create }

      it 'returns a 201 (Created)' do
        expect(response.content_type).to eq("application/json")
        expect(response).to have_http_status(:created)
      end
    end
  end
end

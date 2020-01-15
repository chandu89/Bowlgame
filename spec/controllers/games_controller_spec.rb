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

  describe '#show' do

    context 'when accessing show via GET' do
      before { get :show , params:{id: Game.first.id} }

      it 'returns a 201 (Created)' do
        parse_json_id = JSON(response.body)['id']
        expect(response.content_type).to eq("application/json")
        expect(parse_json_id).not_to be_empty
      end
    end
  end

  describe '#new_ball' do

    context 'when accessing new_ball via POST' do
      before { post :new_ball, params:{game_id: Game.first, pins: 4} }

      it 'returns a 201 (Created)' do
        expect(response.content_type).to eq("application/json")
        expect(response).to have_http_status(:created)
      end

    end

    # context 'when accessing new_ball via POST with invalid pins' do
    #   before { post :new_ball, params:{game_id: Game.first, pins: -1} }
    #
    #   it 'returns a unprocessable_entity' do
    #     expect(response.content_type).to eq("application/json")
    #     expect(response).to have_http_status(:unprocessable_entity)
    #   end
    # end
  end
end

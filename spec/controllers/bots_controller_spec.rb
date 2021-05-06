require 'rails_helper'

RSpec.describe BotsController, type: :controller do
  let(:bot) { FactoryBot.create(:bot) }

  it 'assigns @bots' do
    get :index

    expect(assigns[:bots]).to eq([bot])
  end
end

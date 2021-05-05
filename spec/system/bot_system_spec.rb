require 'rails_helper'

RSpec.describe 'Bot management', type: :system do
  it 'enables to create bot' do
    visit '/'
    click_link 'new bot'

    fill_in 'Name', with: 'New bot'

    click_on 'Create bots'

    expect(page).to have_content('success')
  end
end

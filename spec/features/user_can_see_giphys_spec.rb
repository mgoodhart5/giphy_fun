require 'rails_helper'

describe 'when i visit the root page' do
  it 'i see a form to enter a word' do

    word = "glitter"
    visit '/'
    fill_in :q, with: word
    click_button "Be Fancy"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Here's your fabulous giphys!!")
    expect(page).to have_content("glitter!!")
  end
end

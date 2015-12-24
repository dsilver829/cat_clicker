require 'spec_helper'

feature 'Index page' do
  before(:each) do
    3.times do
      create(:cat)
    end
  end

  scenario 'focuses on an individual cat', js: true do
    visit cats_path
    first('a.cat').click
    expect(page).to have_selector 'a.cat'
    expect(page).to have_content 'Clicks'
  end
end

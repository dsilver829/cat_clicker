require 'rails_helper'
require 'support/reload.rb'

feature 'Cat Clicker' do
  scenario 'launches to the homepage' do
    visit root_url
  end

  scenario 'shows a list of cats' do
    2.times do 
      create(:cat)
    end

    visit cats_path
    expect(page).to have_selector('a.cat', count: 2)
  end

  context 'for an individual cat' do 
    scenario 'shows the cat' do
      cat = create(:cat)
      visit cat_path(cat)
      expect(page).to have_selector 'input[type="image"]'
      expect(page).to have_content '0'
    end

    context 'on click' do
      scenario 'increments the clicker' do
        visit cat_path(create(:cat))
        expect(page).to have_content '0'
        first('#cat').click
        expect(page).to have_content '1'
        expect(page).to_not have_selector 'span.javascript'
      end
      
      scenario 'increments the clicker', js: true do
        visit cat_path(create(:cat))
        expect(page).to have_content 'Clicks'
        expect(page).to have_content '0'
        first('#cat').click
        expect(page).to have_content '1'
        expect(page).to have_selector 'span.javascript'
      end
    end
  end
end

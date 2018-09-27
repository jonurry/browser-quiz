require './lib/question'

feature 'display a question and 3 possible answers' do
  scenario 'A user can see a question and 3 possible answers' do
    visit '/question'
    expect(page).to have_content('Question')
    expect(page).to have_content('Please select your answer')
  end
end

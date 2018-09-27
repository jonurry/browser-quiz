require './lib/question'

feature 'display a question and 3 possible answers' do
  scenario 'A user can see a question title' do
    visit '/question'
    expect(page).to have_content('Question')
  end

  scenario 'A user can see an answer section' do
    visit '/question'
    expect(page).to have_content('Please select your answer:')
  end

  scenario 'A user can see three possible answers' do
    visit '/question'
    for i in 1..3 do
      expect(page).to have_selector("#answer_#{i}")
    end
  end
end

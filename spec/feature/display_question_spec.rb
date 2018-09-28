require './lib/quiz'
require 'pry'

feature 'display a question and 3 possible answers' do
  scenario 'a user can see a question title' do
    visit '/question'
    expect(page).to have_content('Question')
  end

  scenario 'a user can see an answer section' do
    visit '/question'
    expect(page).to have_content('Please select your answer:')
  end

  scenario 'a user can see three possible answers' do
    visit '/question'
    for i in 1..3 do
      expect(page).to have_selector("#answer_#{i}")
    end
  end

  scenario 'a user can see an actual question from the database' do
    visit 'question/1'
    first = Quiz.questions[0]
    expect(page).to have_content(first.question)
  end

  scenario 'a user can see an actual answers from the database' do
    visit 'question/1'
    answers = Quiz.questions[0].answers
    answers.each do |answer|
      expect(page).to have_content(answer)
    end
  end
end
